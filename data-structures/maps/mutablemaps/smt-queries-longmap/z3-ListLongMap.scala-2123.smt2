; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35946 () Bool)

(assert start!35946)

(declare-fun b!360986 () Bool)

(declare-fun e!221041 () Bool)

(declare-datatypes ((array!20243 0))(
  ( (array!20244 (arr!9609 (Array (_ BitVec 32) (_ BitVec 64))) (size!9961 (_ BitVec 32))) )
))
(declare-fun _keys!1541 () array!20243)

(assert (=> b!360986 (= e!221041 (and (bvsle #b00000000000000000000000000000000 (size!9961 _keys!1541)) (bvsge (size!9961 _keys!1541) #b01111111111111111111111111111111)))))

(declare-fun res!200881 () Bool)

(assert (=> start!35946 (=> (not res!200881) (not e!221041))))

(declare-fun mask!1943 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35946 (= res!200881 (validMask!0 mask!1943))))

(assert (=> start!35946 e!221041))

(assert (=> start!35946 true))

(declare-datatypes ((V!12125 0))(
  ( (V!12126 (val!4225 Int)) )
))
(declare-datatypes ((ValueCell!3837 0))(
  ( (ValueCellFull!3837 (v!6415 V!12125)) (EmptyCell!3837) )
))
(declare-datatypes ((array!20245 0))(
  ( (array!20246 (arr!9610 (Array (_ BitVec 32) ValueCell!3837)) (size!9962 (_ BitVec 32))) )
))
(declare-fun _values!1277 () array!20245)

(declare-fun e!221037 () Bool)

(declare-fun array_inv!7064 (array!20245) Bool)

(assert (=> start!35946 (and (array_inv!7064 _values!1277) e!221037)))

(declare-fun array_inv!7065 (array!20243) Bool)

(assert (=> start!35946 (array_inv!7065 _keys!1541)))

(declare-fun b!360987 () Bool)

(declare-fun res!200882 () Bool)

(assert (=> b!360987 (=> (not res!200882) (not e!221041))))

(declare-fun extraKeys!1198 () (_ BitVec 32))

(assert (=> b!360987 (= res!200882 (and (= (size!9962 _values!1277) (bvadd #b00000000000000000000000000000001 mask!1943)) (= (size!9961 _keys!1541) (size!9962 _values!1277)) (bvsge mask!1943 #b00000000000000000000000000000000) (bvsge extraKeys!1198 #b00000000000000000000000000000000) (bvsle extraKeys!1198 #b00000000000000000000000000000011)))))

(declare-fun b!360988 () Bool)

(declare-fun e!221039 () Bool)

(declare-fun mapRes!14058 () Bool)

(assert (=> b!360988 (= e!221037 (and e!221039 mapRes!14058))))

(declare-fun condMapEmpty!14058 () Bool)

(declare-fun mapDefault!14058 () ValueCell!3837)

(assert (=> b!360988 (= condMapEmpty!14058 (= (arr!9610 _values!1277) ((as const (Array (_ BitVec 32) ValueCell!3837)) mapDefault!14058)))))

(declare-fun b!360989 () Bool)

(declare-fun res!200883 () Bool)

(assert (=> b!360989 (=> (not res!200883) (not e!221041))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20243 (_ BitVec 32)) Bool)

(assert (=> b!360989 (= res!200883 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1541 mask!1943))))

(declare-fun b!360990 () Bool)

(declare-fun e!221038 () Bool)

(declare-fun tp_is_empty!8361 () Bool)

(assert (=> b!360990 (= e!221038 tp_is_empty!8361)))

(declare-fun b!360991 () Bool)

(assert (=> b!360991 (= e!221039 tp_is_empty!8361)))

(declare-fun mapIsEmpty!14058 () Bool)

(assert (=> mapIsEmpty!14058 mapRes!14058))

(declare-fun mapNonEmpty!14058 () Bool)

(declare-fun tp!28134 () Bool)

(assert (=> mapNonEmpty!14058 (= mapRes!14058 (and tp!28134 e!221038))))

(declare-fun mapValue!14058 () ValueCell!3837)

(declare-fun mapRest!14058 () (Array (_ BitVec 32) ValueCell!3837))

(declare-fun mapKey!14058 () (_ BitVec 32))

(assert (=> mapNonEmpty!14058 (= (arr!9610 _values!1277) (store mapRest!14058 mapKey!14058 mapValue!14058))))

(assert (= (and start!35946 res!200881) b!360987))

(assert (= (and b!360987 res!200882) b!360989))

(assert (= (and b!360989 res!200883) b!360986))

(assert (= (and b!360988 condMapEmpty!14058) mapIsEmpty!14058))

(assert (= (and b!360988 (not condMapEmpty!14058)) mapNonEmpty!14058))

(get-info :version)

(assert (= (and mapNonEmpty!14058 ((_ is ValueCellFull!3837) mapValue!14058)) b!360990))

(assert (= (and b!360988 ((_ is ValueCellFull!3837) mapDefault!14058)) b!360991))

(assert (= start!35946 b!360988))

(declare-fun m!357949 () Bool)

(assert (=> start!35946 m!357949))

(declare-fun m!357951 () Bool)

(assert (=> start!35946 m!357951))

(declare-fun m!357953 () Bool)

(assert (=> start!35946 m!357953))

(declare-fun m!357955 () Bool)

(assert (=> b!360989 m!357955))

(declare-fun m!357957 () Bool)

(assert (=> mapNonEmpty!14058 m!357957))

(check-sat (not b!360989) (not start!35946) (not mapNonEmpty!14058) tp_is_empty!8361)
(check-sat)
(get-model)

(declare-fun b!361018 () Bool)

(declare-fun e!221063 () Bool)

(declare-fun call!27167 () Bool)

(assert (=> b!361018 (= e!221063 call!27167)))

(declare-fun b!361019 () Bool)

(declare-fun e!221064 () Bool)

(assert (=> b!361019 (= e!221064 call!27167)))

(declare-fun d!71767 () Bool)

(declare-fun res!200898 () Bool)

(declare-fun e!221065 () Bool)

(assert (=> d!71767 (=> res!200898 e!221065)))

(assert (=> d!71767 (= res!200898 (bvsge #b00000000000000000000000000000000 (size!9961 _keys!1541)))))

(assert (=> d!71767 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1541 mask!1943) e!221065)))

(declare-fun bm!27164 () Bool)

(assert (=> bm!27164 (= call!27167 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1541 mask!1943))))

(declare-fun b!361020 () Bool)

(assert (=> b!361020 (= e!221064 e!221063)))

(declare-fun lt!166494 () (_ BitVec 64))

(assert (=> b!361020 (= lt!166494 (select (arr!9609 _keys!1541) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!11099 0))(
  ( (Unit!11100) )
))
(declare-fun lt!166495 () Unit!11099)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!20243 (_ BitVec 64) (_ BitVec 32)) Unit!11099)

(assert (=> b!361020 (= lt!166495 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1541 lt!166494 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!20243 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!361020 (arrayContainsKey!0 _keys!1541 lt!166494 #b00000000000000000000000000000000)))

(declare-fun lt!166493 () Unit!11099)

(assert (=> b!361020 (= lt!166493 lt!166495)))

(declare-fun res!200897 () Bool)

(declare-datatypes ((SeekEntryResult!3481 0))(
  ( (MissingZero!3481 (index!16103 (_ BitVec 32))) (Found!3481 (index!16104 (_ BitVec 32))) (Intermediate!3481 (undefined!4293 Bool) (index!16105 (_ BitVec 32)) (x!35972 (_ BitVec 32))) (Undefined!3481) (MissingVacant!3481 (index!16106 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!20243 (_ BitVec 32)) SeekEntryResult!3481)

(assert (=> b!361020 (= res!200897 (= (seekEntryOrOpen!0 (select (arr!9609 _keys!1541) #b00000000000000000000000000000000) _keys!1541 mask!1943) (Found!3481 #b00000000000000000000000000000000)))))

(assert (=> b!361020 (=> (not res!200897) (not e!221063))))

(declare-fun b!361021 () Bool)

(assert (=> b!361021 (= e!221065 e!221064)))

(declare-fun c!53642 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!361021 (= c!53642 (validKeyInArray!0 (select (arr!9609 _keys!1541) #b00000000000000000000000000000000)))))

(assert (= (and d!71767 (not res!200898)) b!361021))

(assert (= (and b!361021 c!53642) b!361020))

(assert (= (and b!361021 (not c!53642)) b!361019))

(assert (= (and b!361020 res!200897) b!361018))

(assert (= (or b!361018 b!361019) bm!27164))

(declare-fun m!357969 () Bool)

(assert (=> bm!27164 m!357969))

(declare-fun m!357971 () Bool)

(assert (=> b!361020 m!357971))

(declare-fun m!357973 () Bool)

(assert (=> b!361020 m!357973))

(declare-fun m!357975 () Bool)

(assert (=> b!361020 m!357975))

(assert (=> b!361020 m!357971))

(declare-fun m!357977 () Bool)

(assert (=> b!361020 m!357977))

(assert (=> b!361021 m!357971))

(assert (=> b!361021 m!357971))

(declare-fun m!357979 () Bool)

(assert (=> b!361021 m!357979))

(assert (=> b!360989 d!71767))

(declare-fun d!71769 () Bool)

(assert (=> d!71769 (= (validMask!0 mask!1943) (and (or (= mask!1943 #b00000000000000000000000000000111) (= mask!1943 #b00000000000000000000000000001111) (= mask!1943 #b00000000000000000000000000011111) (= mask!1943 #b00000000000000000000000000111111) (= mask!1943 #b00000000000000000000000001111111) (= mask!1943 #b00000000000000000000000011111111) (= mask!1943 #b00000000000000000000000111111111) (= mask!1943 #b00000000000000000000001111111111) (= mask!1943 #b00000000000000000000011111111111) (= mask!1943 #b00000000000000000000111111111111) (= mask!1943 #b00000000000000000001111111111111) (= mask!1943 #b00000000000000000011111111111111) (= mask!1943 #b00000000000000000111111111111111) (= mask!1943 #b00000000000000001111111111111111) (= mask!1943 #b00000000000000011111111111111111) (= mask!1943 #b00000000000000111111111111111111) (= mask!1943 #b00000000000001111111111111111111) (= mask!1943 #b00000000000011111111111111111111) (= mask!1943 #b00000000000111111111111111111111) (= mask!1943 #b00000000001111111111111111111111) (= mask!1943 #b00000000011111111111111111111111) (= mask!1943 #b00000000111111111111111111111111) (= mask!1943 #b00000001111111111111111111111111) (= mask!1943 #b00000011111111111111111111111111) (= mask!1943 #b00000111111111111111111111111111) (= mask!1943 #b00001111111111111111111111111111) (= mask!1943 #b00011111111111111111111111111111) (= mask!1943 #b00111111111111111111111111111111)) (bvsle mask!1943 #b00111111111111111111111111111111)))))

(assert (=> start!35946 d!71769))

(declare-fun d!71771 () Bool)

(assert (=> d!71771 (= (array_inv!7064 _values!1277) (bvsge (size!9962 _values!1277) #b00000000000000000000000000000000))))

(assert (=> start!35946 d!71771))

(declare-fun d!71773 () Bool)

(assert (=> d!71773 (= (array_inv!7065 _keys!1541) (bvsge (size!9961 _keys!1541) #b00000000000000000000000000000000))))

(assert (=> start!35946 d!71773))

(declare-fun b!361029 () Bool)

(declare-fun e!221070 () Bool)

(assert (=> b!361029 (= e!221070 tp_is_empty!8361)))

(declare-fun mapNonEmpty!14064 () Bool)

(declare-fun mapRes!14064 () Bool)

(declare-fun tp!28140 () Bool)

(declare-fun e!221071 () Bool)

(assert (=> mapNonEmpty!14064 (= mapRes!14064 (and tp!28140 e!221071))))

(declare-fun mapRest!14064 () (Array (_ BitVec 32) ValueCell!3837))

(declare-fun mapKey!14064 () (_ BitVec 32))

(declare-fun mapValue!14064 () ValueCell!3837)

(assert (=> mapNonEmpty!14064 (= mapRest!14058 (store mapRest!14064 mapKey!14064 mapValue!14064))))

(declare-fun condMapEmpty!14064 () Bool)

(declare-fun mapDefault!14064 () ValueCell!3837)

(assert (=> mapNonEmpty!14058 (= condMapEmpty!14064 (= mapRest!14058 ((as const (Array (_ BitVec 32) ValueCell!3837)) mapDefault!14064)))))

(assert (=> mapNonEmpty!14058 (= tp!28134 (and e!221070 mapRes!14064))))

(declare-fun mapIsEmpty!14064 () Bool)

(assert (=> mapIsEmpty!14064 mapRes!14064))

(declare-fun b!361028 () Bool)

(assert (=> b!361028 (= e!221071 tp_is_empty!8361)))

(assert (= (and mapNonEmpty!14058 condMapEmpty!14064) mapIsEmpty!14064))

(assert (= (and mapNonEmpty!14058 (not condMapEmpty!14064)) mapNonEmpty!14064))

(assert (= (and mapNonEmpty!14064 ((_ is ValueCellFull!3837) mapValue!14064)) b!361028))

(assert (= (and mapNonEmpty!14058 ((_ is ValueCellFull!3837) mapDefault!14064)) b!361029))

(declare-fun m!357981 () Bool)

(assert (=> mapNonEmpty!14064 m!357981))

(check-sat (not mapNonEmpty!14064) (not b!361021) (not bm!27164) (not b!361020) tp_is_empty!8361)
(check-sat)
