![RAP_ScreenShot](https://github.com/user-attachments/assets/5ecf4082-1003-46f9-b463-ae4ec27418bb)
![RAP_ScreenShot2](https://github.com/user-attachments/assets/41239542-9b3c-4bf0-bb46-f1d792fc4399)
# Rest full ABAP Programming Model
OData uses stateless communication
- The concept of Business object is used for building  transactional applications.
- The concept of Draft functionality is used for building stateful applications.
  # Uses the concept of Business service to create 
1. OData.
2. InA Service Protocol.
3. SQL Based services.

# Overview of RAP Architecture
- Rest full ABAP programming is available in 
1. SAP BTP 
2. SAP S/4 HANA
3. Application service ABAP 7.56
![image1](https://github.com/user-attachments/assets/a1a0c53c-055a-49a6-8819-770cc8235c19)

# Business Object
- Business objects defines real time artifact in enterprise application development 
Eg: Sales order , Purchase order, Invoice etc.
- Business Object will have one root node and have one child or multiple child.
  ![image](https://github.com/user-attachments/assets/7db5a6a1-1afc-4cb1-8590-84eed6982d03)
![image3](https://github.com/user-attachments/assets/0d4ccbfe-854c-4aad-8a71-ee549fe63c7f)
![image4](https://github.com/user-attachments/assets/b45f279f-d84b-469e-b028-1fc106031bc6)
![image5](https://github.com/user-attachments/assets/981c1622-18e1-40ca-9744-e27375d102d4)
![image6](https://github.com/user-attachments/assets/5beee562-502c-46a1-a269-3d66cb253cc5)
# First RAP Application
- Steps to create simple list report 
1. Create interface view on connection database table.
2. Since this is read only application we can ignore creating the projection view.
3. Create Service definition to expose the Interface entity.
4. Create Service binding to create OData.
5. Preview Application.
![image7](https://github.com/user-attachments/assets/19ceefb0-536d-4a45-bfd1-36420567cc6d)
# Interview Question : What is Define view entity vs Define Root view entity?
![image8](https://github.com/user-attachments/assets/bf2b3664-d250-4db9-82b4-e530284e2b05)
-Once the interface view is done and then create new service definition to expose the interface view.
 then create service binding to bind the OData protocol.
 ![image9](https://github.com/user-attachments/assets/b525c0f6-cdc8-4891-bef3-fb50010d11a4)
