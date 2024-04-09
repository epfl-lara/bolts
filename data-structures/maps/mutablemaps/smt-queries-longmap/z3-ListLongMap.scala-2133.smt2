; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36070 () Bool)

(assert start!36070)

(declare-fun res!201392 () Bool)

(declare-fun e!221658 () Bool)

(assert (=> start!36070 (=> (not res!201392) (not e!221658))))

(declare-fun mask!1943 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36070 (= res!201392 (validMask!0 mask!1943))))

(assert (=> start!36070 e!221658))

(assert (=> start!36070 true))

(declare-datatypes ((array!20369 0))(
  ( (array!20370 (arr!9666 (Array (_ BitVec 32) (_ BitVec 64))) (size!10018 (_ BitVec 32))) )
))
(declare-fun _keys!1541 () array!20369)

(declare-fun array_inv!7106 (array!20369) Bool)

(assert (=> start!36070 (array_inv!7106 _keys!1541)))

(declare-datatypes ((V!12205 0))(
  ( (V!12206 (val!4255 Int)) )
))
(declare-datatypes ((ValueCell!3867 0))(
  ( (ValueCellFull!3867 (v!6446 V!12205)) (EmptyCell!3867) )
))
(declare-datatypes ((array!20371 0))(
  ( (array!20372 (arr!9667 (Array (_ BitVec 32) ValueCell!3867)) (size!10019 (_ BitVec 32))) )
))
(declare-fun _values!1277 () array!20371)

(declare-fun e!221657 () Bool)

(declare-fun array_inv!7107 (array!20371) Bool)

(assert (=> start!36070 (and (array_inv!7107 _values!1277) e!221657)))

(declare-fun from!1924 () (_ BitVec 32))

(declare-fun b!361869 () Bool)

(declare-fun k0!1134 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!20369 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!361869 (= e!221658 (not (arrayContainsKey!0 _keys!1541 k0!1134 (bvadd #b00000000000000000000000000000001 from!1924))))))

(declare-fun b!361870 () Bool)

(declare-fun res!201394 () Bool)

(assert (=> b!361870 (=> (not res!201394) (not e!221658))))

(declare-datatypes ((List!5545 0))(
  ( (Nil!5542) (Cons!5541 (h!6397 (_ BitVec 64)) (t!10703 List!5545)) )
))
(declare-fun arrayNoDuplicates!0 (array!20369 (_ BitVec 32) List!5545) Bool)

(assert (=> b!361870 (= res!201394 (arrayNoDuplicates!0 _keys!1541 #b00000000000000000000000000000000 Nil!5542))))

(declare-fun b!361871 () Bool)

(declare-fun res!201396 () Bool)

(assert (=> b!361871 (=> (not res!201396) (not e!221658))))

(assert (=> b!361871 (= res!201396 (not (= (select (arr!9666 _keys!1541) from!1924) k0!1134)))))

(declare-fun b!361872 () Bool)

(declare-fun e!221655 () Bool)

(declare-fun tp_is_empty!8421 () Bool)

(assert (=> b!361872 (= e!221655 tp_is_empty!8421)))

(declare-fun b!361873 () Bool)

(declare-fun res!201398 () Bool)

(assert (=> b!361873 (=> (not res!201398) (not e!221658))))

(assert (=> b!361873 (= res!201398 (arrayContainsKey!0 _keys!1541 k0!1134 from!1924))))

(declare-fun b!361874 () Bool)

(declare-fun e!221656 () Bool)

(assert (=> b!361874 (= e!221656 tp_is_empty!8421)))

(declare-fun mapIsEmpty!14166 () Bool)

(declare-fun mapRes!14166 () Bool)

(assert (=> mapIsEmpty!14166 mapRes!14166))

(declare-fun b!361875 () Bool)

(declare-fun res!201393 () Bool)

(assert (=> b!361875 (=> (not res!201393) (not e!221658))))

(assert (=> b!361875 (= res!201393 (and (bvsge from!1924 #b00000000000000000000000000000000) (bvslt from!1924 (size!10018 _keys!1541))))))

(declare-fun mapNonEmpty!14166 () Bool)

(declare-fun tp!28242 () Bool)

(assert (=> mapNonEmpty!14166 (= mapRes!14166 (and tp!28242 e!221655))))

(declare-fun mapRest!14166 () (Array (_ BitVec 32) ValueCell!3867))

(declare-fun mapKey!14166 () (_ BitVec 32))

(declare-fun mapValue!14166 () ValueCell!3867)

(assert (=> mapNonEmpty!14166 (= (arr!9667 _values!1277) (store mapRest!14166 mapKey!14166 mapValue!14166))))

(declare-fun b!361876 () Bool)

(declare-fun res!201395 () Bool)

(assert (=> b!361876 (=> (not res!201395) (not e!221658))))

(declare-fun extraKeys!1198 () (_ BitVec 32))

(assert (=> b!361876 (= res!201395 (and (= (size!10019 _values!1277) (bvadd #b00000000000000000000000000000001 mask!1943)) (= (size!10018 _keys!1541) (size!10019 _values!1277)) (bvsge mask!1943 #b00000000000000000000000000000000) (bvsge extraKeys!1198 #b00000000000000000000000000000000) (bvsle extraKeys!1198 #b00000000000000000000000000000011)))))

(declare-fun b!361877 () Bool)

(declare-fun res!201397 () Bool)

(assert (=> b!361877 (=> (not res!201397) (not e!221658))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20369 (_ BitVec 32)) Bool)

(assert (=> b!361877 (= res!201397 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1541 mask!1943))))

(declare-fun b!361878 () Bool)

(assert (=> b!361878 (= e!221657 (and e!221656 mapRes!14166))))

(declare-fun condMapEmpty!14166 () Bool)

(declare-fun mapDefault!14166 () ValueCell!3867)

(assert (=> b!361878 (= condMapEmpty!14166 (= (arr!9667 _values!1277) ((as const (Array (_ BitVec 32) ValueCell!3867)) mapDefault!14166)))))

(assert (= (and start!36070 res!201392) b!361876))

(assert (= (and b!361876 res!201395) b!361877))

(assert (= (and b!361877 res!201397) b!361870))

(assert (= (and b!361870 res!201394) b!361875))

(assert (= (and b!361875 res!201393) b!361873))

(assert (= (and b!361873 res!201398) b!361871))

(assert (= (and b!361871 res!201396) b!361869))

(assert (= (and b!361878 condMapEmpty!14166) mapIsEmpty!14166))

(assert (= (and b!361878 (not condMapEmpty!14166)) mapNonEmpty!14166))

(get-info :version)

(assert (= (and mapNonEmpty!14166 ((_ is ValueCellFull!3867) mapValue!14166)) b!361872))

(assert (= (and b!361878 ((_ is ValueCellFull!3867) mapDefault!14166)) b!361874))

(assert (= start!36070 b!361878))

(declare-fun m!358477 () Bool)

(assert (=> b!361870 m!358477))

(declare-fun m!358479 () Bool)

(assert (=> b!361877 m!358479))

(declare-fun m!358481 () Bool)

(assert (=> b!361869 m!358481))

(declare-fun m!358483 () Bool)

(assert (=> mapNonEmpty!14166 m!358483))

(declare-fun m!358485 () Bool)

(assert (=> start!36070 m!358485))

(declare-fun m!358487 () Bool)

(assert (=> start!36070 m!358487))

(declare-fun m!358489 () Bool)

(assert (=> start!36070 m!358489))

(declare-fun m!358491 () Bool)

(assert (=> b!361873 m!358491))

(declare-fun m!358493 () Bool)

(assert (=> b!361871 m!358493))

(check-sat (not b!361869) (not b!361870) (not b!361877) (not start!36070) tp_is_empty!8421 (not b!361873) (not mapNonEmpty!14166))
(check-sat)
(get-model)

(declare-fun d!71853 () Bool)

(declare-fun res!201424 () Bool)

(declare-fun e!221678 () Bool)

(assert (=> d!71853 (=> res!201424 e!221678)))

(assert (=> d!71853 (= res!201424 (= (select (arr!9666 _keys!1541) from!1924) k0!1134))))

(assert (=> d!71853 (= (arrayContainsKey!0 _keys!1541 k0!1134 from!1924) e!221678)))

(declare-fun b!361913 () Bool)

(declare-fun e!221679 () Bool)

(assert (=> b!361913 (= e!221678 e!221679)))

(declare-fun res!201425 () Bool)

(assert (=> b!361913 (=> (not res!201425) (not e!221679))))

(assert (=> b!361913 (= res!201425 (bvslt (bvadd from!1924 #b00000000000000000000000000000001) (size!10018 _keys!1541)))))

(declare-fun b!361914 () Bool)

(assert (=> b!361914 (= e!221679 (arrayContainsKey!0 _keys!1541 k0!1134 (bvadd from!1924 #b00000000000000000000000000000001)))))

(assert (= (and d!71853 (not res!201424)) b!361913))

(assert (= (and b!361913 res!201425) b!361914))

(assert (=> d!71853 m!358493))

(declare-fun m!358513 () Bool)

(assert (=> b!361914 m!358513))

(assert (=> b!361873 d!71853))

(declare-fun b!361923 () Bool)

(declare-fun e!221686 () Bool)

(declare-fun call!27194 () Bool)

(assert (=> b!361923 (= e!221686 call!27194)))

(declare-fun b!361924 () Bool)

(declare-fun e!221688 () Bool)

(assert (=> b!361924 (= e!221688 call!27194)))

(declare-fun d!71855 () Bool)

(declare-fun res!201430 () Bool)

(declare-fun e!221687 () Bool)

(assert (=> d!71855 (=> res!201430 e!221687)))

(assert (=> d!71855 (= res!201430 (bvsge #b00000000000000000000000000000000 (size!10018 _keys!1541)))))

(assert (=> d!71855 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1541 mask!1943) e!221687)))

(declare-fun b!361925 () Bool)

(assert (=> b!361925 (= e!221687 e!221688)))

(declare-fun c!53669 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!361925 (= c!53669 (validKeyInArray!0 (select (arr!9666 _keys!1541) #b00000000000000000000000000000000)))))

(declare-fun b!361926 () Bool)

(assert (=> b!361926 (= e!221688 e!221686)))

(declare-fun lt!166580 () (_ BitVec 64))

(assert (=> b!361926 (= lt!166580 (select (arr!9666 _keys!1541) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!11111 0))(
  ( (Unit!11112) )
))
(declare-fun lt!166578 () Unit!11111)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!20369 (_ BitVec 64) (_ BitVec 32)) Unit!11111)

(assert (=> b!361926 (= lt!166578 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1541 lt!166580 #b00000000000000000000000000000000))))

(assert (=> b!361926 (arrayContainsKey!0 _keys!1541 lt!166580 #b00000000000000000000000000000000)))

(declare-fun lt!166579 () Unit!11111)

(assert (=> b!361926 (= lt!166579 lt!166578)))

(declare-fun res!201431 () Bool)

(declare-datatypes ((SeekEntryResult!3487 0))(
  ( (MissingZero!3487 (index!16127 (_ BitVec 32))) (Found!3487 (index!16128 (_ BitVec 32))) (Intermediate!3487 (undefined!4299 Bool) (index!16129 (_ BitVec 32)) (x!36070 (_ BitVec 32))) (Undefined!3487) (MissingVacant!3487 (index!16130 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!20369 (_ BitVec 32)) SeekEntryResult!3487)

(assert (=> b!361926 (= res!201431 (= (seekEntryOrOpen!0 (select (arr!9666 _keys!1541) #b00000000000000000000000000000000) _keys!1541 mask!1943) (Found!3487 #b00000000000000000000000000000000)))))

(assert (=> b!361926 (=> (not res!201431) (not e!221686))))

(declare-fun bm!27191 () Bool)

(assert (=> bm!27191 (= call!27194 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1541 mask!1943))))

(assert (= (and d!71855 (not res!201430)) b!361925))

(assert (= (and b!361925 c!53669) b!361926))

(assert (= (and b!361925 (not c!53669)) b!361924))

(assert (= (and b!361926 res!201431) b!361923))

(assert (= (or b!361923 b!361924) bm!27191))

(declare-fun m!358515 () Bool)

(assert (=> b!361925 m!358515))

(assert (=> b!361925 m!358515))

(declare-fun m!358517 () Bool)

(assert (=> b!361925 m!358517))

(assert (=> b!361926 m!358515))

(declare-fun m!358519 () Bool)

(assert (=> b!361926 m!358519))

(declare-fun m!358521 () Bool)

(assert (=> b!361926 m!358521))

(assert (=> b!361926 m!358515))

(declare-fun m!358523 () Bool)

(assert (=> b!361926 m!358523))

(declare-fun m!358525 () Bool)

(assert (=> bm!27191 m!358525))

(assert (=> b!361877 d!71855))

(declare-fun d!71857 () Bool)

(declare-fun res!201432 () Bool)

(declare-fun e!221689 () Bool)

(assert (=> d!71857 (=> res!201432 e!221689)))

(assert (=> d!71857 (= res!201432 (= (select (arr!9666 _keys!1541) (bvadd #b00000000000000000000000000000001 from!1924)) k0!1134))))

(assert (=> d!71857 (= (arrayContainsKey!0 _keys!1541 k0!1134 (bvadd #b00000000000000000000000000000001 from!1924)) e!221689)))

(declare-fun b!361927 () Bool)

(declare-fun e!221690 () Bool)

(assert (=> b!361927 (= e!221689 e!221690)))

(declare-fun res!201433 () Bool)

(assert (=> b!361927 (=> (not res!201433) (not e!221690))))

(assert (=> b!361927 (= res!201433 (bvslt (bvadd #b00000000000000000000000000000001 from!1924 #b00000000000000000000000000000001) (size!10018 _keys!1541)))))

(declare-fun b!361928 () Bool)

(assert (=> b!361928 (= e!221690 (arrayContainsKey!0 _keys!1541 k0!1134 (bvadd #b00000000000000000000000000000001 from!1924 #b00000000000000000000000000000001)))))

(assert (= (and d!71857 (not res!201432)) b!361927))

(assert (= (and b!361927 res!201433) b!361928))

(declare-fun m!358527 () Bool)

(assert (=> d!71857 m!358527))

(declare-fun m!358529 () Bool)

(assert (=> b!361928 m!358529))

(assert (=> b!361869 d!71857))

(declare-fun b!361939 () Bool)

(declare-fun e!221701 () Bool)

(declare-fun contains!2431 (List!5545 (_ BitVec 64)) Bool)

(assert (=> b!361939 (= e!221701 (contains!2431 Nil!5542 (select (arr!9666 _keys!1541) #b00000000000000000000000000000000)))))

(declare-fun b!361940 () Bool)

(declare-fun e!221699 () Bool)

(declare-fun e!221700 () Bool)

(assert (=> b!361940 (= e!221699 e!221700)))

(declare-fun res!201442 () Bool)

(assert (=> b!361940 (=> (not res!201442) (not e!221700))))

(assert (=> b!361940 (= res!201442 (not e!221701))))

(declare-fun res!201441 () Bool)

(assert (=> b!361940 (=> (not res!201441) (not e!221701))))

(assert (=> b!361940 (= res!201441 (validKeyInArray!0 (select (arr!9666 _keys!1541) #b00000000000000000000000000000000)))))

(declare-fun b!361941 () Bool)

(declare-fun e!221702 () Bool)

(declare-fun call!27197 () Bool)

(assert (=> b!361941 (= e!221702 call!27197)))

(declare-fun d!71859 () Bool)

(declare-fun res!201440 () Bool)

(assert (=> d!71859 (=> res!201440 e!221699)))

(assert (=> d!71859 (= res!201440 (bvsge #b00000000000000000000000000000000 (size!10018 _keys!1541)))))

(assert (=> d!71859 (= (arrayNoDuplicates!0 _keys!1541 #b00000000000000000000000000000000 Nil!5542) e!221699)))

(declare-fun bm!27194 () Bool)

(declare-fun c!53672 () Bool)

(assert (=> bm!27194 (= call!27197 (arrayNoDuplicates!0 _keys!1541 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!53672 (Cons!5541 (select (arr!9666 _keys!1541) #b00000000000000000000000000000000) Nil!5542) Nil!5542)))))

(declare-fun b!361942 () Bool)

(assert (=> b!361942 (= e!221700 e!221702)))

(assert (=> b!361942 (= c!53672 (validKeyInArray!0 (select (arr!9666 _keys!1541) #b00000000000000000000000000000000)))))

(declare-fun b!361943 () Bool)

(assert (=> b!361943 (= e!221702 call!27197)))

(assert (= (and d!71859 (not res!201440)) b!361940))

(assert (= (and b!361940 res!201441) b!361939))

(assert (= (and b!361940 res!201442) b!361942))

(assert (= (and b!361942 c!53672) b!361943))

(assert (= (and b!361942 (not c!53672)) b!361941))

(assert (= (or b!361943 b!361941) bm!27194))

(assert (=> b!361939 m!358515))

(assert (=> b!361939 m!358515))

(declare-fun m!358531 () Bool)

(assert (=> b!361939 m!358531))

(assert (=> b!361940 m!358515))

(assert (=> b!361940 m!358515))

(assert (=> b!361940 m!358517))

(assert (=> bm!27194 m!358515))

(declare-fun m!358533 () Bool)

(assert (=> bm!27194 m!358533))

(assert (=> b!361942 m!358515))

(assert (=> b!361942 m!358515))

(assert (=> b!361942 m!358517))

(assert (=> b!361870 d!71859))

(declare-fun d!71861 () Bool)

(assert (=> d!71861 (= (validMask!0 mask!1943) (and (or (= mask!1943 #b00000000000000000000000000000111) (= mask!1943 #b00000000000000000000000000001111) (= mask!1943 #b00000000000000000000000000011111) (= mask!1943 #b00000000000000000000000000111111) (= mask!1943 #b00000000000000000000000001111111) (= mask!1943 #b00000000000000000000000011111111) (= mask!1943 #b00000000000000000000000111111111) (= mask!1943 #b00000000000000000000001111111111) (= mask!1943 #b00000000000000000000011111111111) (= mask!1943 #b00000000000000000000111111111111) (= mask!1943 #b00000000000000000001111111111111) (= mask!1943 #b00000000000000000011111111111111) (= mask!1943 #b00000000000000000111111111111111) (= mask!1943 #b00000000000000001111111111111111) (= mask!1943 #b00000000000000011111111111111111) (= mask!1943 #b00000000000000111111111111111111) (= mask!1943 #b00000000000001111111111111111111) (= mask!1943 #b00000000000011111111111111111111) (= mask!1943 #b00000000000111111111111111111111) (= mask!1943 #b00000000001111111111111111111111) (= mask!1943 #b00000000011111111111111111111111) (= mask!1943 #b00000000111111111111111111111111) (= mask!1943 #b00000001111111111111111111111111) (= mask!1943 #b00000011111111111111111111111111) (= mask!1943 #b00000111111111111111111111111111) (= mask!1943 #b00001111111111111111111111111111) (= mask!1943 #b00011111111111111111111111111111) (= mask!1943 #b00111111111111111111111111111111)) (bvsle mask!1943 #b00111111111111111111111111111111)))))

(assert (=> start!36070 d!71861))

(declare-fun d!71863 () Bool)

(assert (=> d!71863 (= (array_inv!7106 _keys!1541) (bvsge (size!10018 _keys!1541) #b00000000000000000000000000000000))))

(assert (=> start!36070 d!71863))

(declare-fun d!71865 () Bool)

(assert (=> d!71865 (= (array_inv!7107 _values!1277) (bvsge (size!10019 _values!1277) #b00000000000000000000000000000000))))

(assert (=> start!36070 d!71865))

(declare-fun mapIsEmpty!14172 () Bool)

(declare-fun mapRes!14172 () Bool)

(assert (=> mapIsEmpty!14172 mapRes!14172))

(declare-fun mapNonEmpty!14172 () Bool)

(declare-fun tp!28248 () Bool)

(declare-fun e!221708 () Bool)

(assert (=> mapNonEmpty!14172 (= mapRes!14172 (and tp!28248 e!221708))))

(declare-fun mapRest!14172 () (Array (_ BitVec 32) ValueCell!3867))

(declare-fun mapValue!14172 () ValueCell!3867)

(declare-fun mapKey!14172 () (_ BitVec 32))

(assert (=> mapNonEmpty!14172 (= mapRest!14166 (store mapRest!14172 mapKey!14172 mapValue!14172))))

(declare-fun b!361951 () Bool)

(declare-fun e!221707 () Bool)

(assert (=> b!361951 (= e!221707 tp_is_empty!8421)))

(declare-fun condMapEmpty!14172 () Bool)

(declare-fun mapDefault!14172 () ValueCell!3867)

(assert (=> mapNonEmpty!14166 (= condMapEmpty!14172 (= mapRest!14166 ((as const (Array (_ BitVec 32) ValueCell!3867)) mapDefault!14172)))))

(assert (=> mapNonEmpty!14166 (= tp!28242 (and e!221707 mapRes!14172))))

(declare-fun b!361950 () Bool)

(assert (=> b!361950 (= e!221708 tp_is_empty!8421)))

(assert (= (and mapNonEmpty!14166 condMapEmpty!14172) mapIsEmpty!14172))

(assert (= (and mapNonEmpty!14166 (not condMapEmpty!14172)) mapNonEmpty!14172))

(assert (= (and mapNonEmpty!14172 ((_ is ValueCellFull!3867) mapValue!14172)) b!361950))

(assert (= (and mapNonEmpty!14166 ((_ is ValueCellFull!3867) mapDefault!14172)) b!361951))

(declare-fun m!358535 () Bool)

(assert (=> mapNonEmpty!14172 m!358535))

(check-sat (not b!361940) tp_is_empty!8421 (not b!361914) (not b!361939) (not b!361942) (not b!361928) (not bm!27191) (not mapNonEmpty!14172) (not b!361925) (not bm!27194) (not b!361926))
(check-sat)
