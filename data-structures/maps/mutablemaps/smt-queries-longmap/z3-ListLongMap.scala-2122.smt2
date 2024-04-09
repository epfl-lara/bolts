; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35932 () Bool)

(assert start!35932)

(declare-fun b!360912 () Bool)

(declare-fun e!220980 () Bool)

(declare-fun e!220978 () Bool)

(declare-fun mapRes!14046 () Bool)

(assert (=> b!360912 (= e!220980 (and e!220978 mapRes!14046))))

(declare-fun condMapEmpty!14046 () Bool)

(declare-datatypes ((V!12117 0))(
  ( (V!12118 (val!4222 Int)) )
))
(declare-datatypes ((ValueCell!3834 0))(
  ( (ValueCellFull!3834 (v!6412 V!12117)) (EmptyCell!3834) )
))
(declare-datatypes ((array!20229 0))(
  ( (array!20230 (arr!9603 (Array (_ BitVec 32) ValueCell!3834)) (size!9955 (_ BitVec 32))) )
))
(declare-fun _values!1277 () array!20229)

(declare-fun mapDefault!14046 () ValueCell!3834)

(assert (=> b!360912 (= condMapEmpty!14046 (= (arr!9603 _values!1277) ((as const (Array (_ BitVec 32) ValueCell!3834)) mapDefault!14046)))))

(declare-fun mapIsEmpty!14046 () Bool)

(assert (=> mapIsEmpty!14046 mapRes!14046))

(declare-fun b!360913 () Bool)

(declare-fun res!200850 () Bool)

(declare-fun e!220981 () Bool)

(assert (=> b!360913 (=> (not res!200850) (not e!220981))))

(declare-datatypes ((array!20231 0))(
  ( (array!20232 (arr!9604 (Array (_ BitVec 32) (_ BitVec 64))) (size!9956 (_ BitVec 32))) )
))
(declare-fun _keys!1541 () array!20231)

(declare-fun mask!1943 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20231 (_ BitVec 32)) Bool)

(assert (=> b!360913 (= res!200850 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1541 mask!1943))))

(declare-fun mapNonEmpty!14046 () Bool)

(declare-fun tp!28122 () Bool)

(declare-fun e!220979 () Bool)

(assert (=> mapNonEmpty!14046 (= mapRes!14046 (and tp!28122 e!220979))))

(declare-fun mapRest!14046 () (Array (_ BitVec 32) ValueCell!3834))

(declare-fun mapKey!14046 () (_ BitVec 32))

(declare-fun mapValue!14046 () ValueCell!3834)

(assert (=> mapNonEmpty!14046 (= (arr!9603 _values!1277) (store mapRest!14046 mapKey!14046 mapValue!14046))))

(declare-fun res!200848 () Bool)

(assert (=> start!35932 (=> (not res!200848) (not e!220981))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35932 (= res!200848 (validMask!0 mask!1943))))

(assert (=> start!35932 e!220981))

(assert (=> start!35932 true))

(declare-fun array_inv!7060 (array!20229) Bool)

(assert (=> start!35932 (and (array_inv!7060 _values!1277) e!220980)))

(declare-fun array_inv!7061 (array!20231) Bool)

(assert (=> start!35932 (array_inv!7061 _keys!1541)))

(declare-fun b!360914 () Bool)

(declare-fun tp_is_empty!8355 () Bool)

(assert (=> b!360914 (= e!220979 tp_is_empty!8355)))

(declare-fun b!360915 () Bool)

(declare-fun res!200849 () Bool)

(assert (=> b!360915 (=> (not res!200849) (not e!220981))))

(declare-fun extraKeys!1198 () (_ BitVec 32))

(assert (=> b!360915 (= res!200849 (and (= (size!9955 _values!1277) (bvadd #b00000000000000000000000000000001 mask!1943)) (= (size!9956 _keys!1541) (size!9955 _values!1277)) (bvsge mask!1943 #b00000000000000000000000000000000) (bvsge extraKeys!1198 #b00000000000000000000000000000000) (bvsle extraKeys!1198 #b00000000000000000000000000000011)))))

(declare-fun b!360916 () Bool)

(assert (=> b!360916 (= e!220978 tp_is_empty!8355)))

(declare-fun b!360917 () Bool)

(assert (=> b!360917 (= e!220981 (bvsgt #b00000000000000000000000000000000 (size!9956 _keys!1541)))))

(assert (= (and start!35932 res!200848) b!360915))

(assert (= (and b!360915 res!200849) b!360913))

(assert (= (and b!360913 res!200850) b!360917))

(assert (= (and b!360912 condMapEmpty!14046) mapIsEmpty!14046))

(assert (= (and b!360912 (not condMapEmpty!14046)) mapNonEmpty!14046))

(get-info :version)

(assert (= (and mapNonEmpty!14046 ((_ is ValueCellFull!3834) mapValue!14046)) b!360914))

(assert (= (and b!360912 ((_ is ValueCellFull!3834) mapDefault!14046)) b!360916))

(assert (= start!35932 b!360912))

(declare-fun m!357905 () Bool)

(assert (=> b!360913 m!357905))

(declare-fun m!357907 () Bool)

(assert (=> mapNonEmpty!14046 m!357907))

(declare-fun m!357909 () Bool)

(assert (=> start!35932 m!357909))

(declare-fun m!357911 () Bool)

(assert (=> start!35932 m!357911))

(declare-fun m!357913 () Bool)

(assert (=> start!35932 m!357913))

(check-sat (not start!35932) (not b!360913) (not mapNonEmpty!14046) tp_is_empty!8355)
(check-sat)
(get-model)

(declare-fun d!71757 () Bool)

(assert (=> d!71757 (= (validMask!0 mask!1943) (and (or (= mask!1943 #b00000000000000000000000000000111) (= mask!1943 #b00000000000000000000000000001111) (= mask!1943 #b00000000000000000000000000011111) (= mask!1943 #b00000000000000000000000000111111) (= mask!1943 #b00000000000000000000000001111111) (= mask!1943 #b00000000000000000000000011111111) (= mask!1943 #b00000000000000000000000111111111) (= mask!1943 #b00000000000000000000001111111111) (= mask!1943 #b00000000000000000000011111111111) (= mask!1943 #b00000000000000000000111111111111) (= mask!1943 #b00000000000000000001111111111111) (= mask!1943 #b00000000000000000011111111111111) (= mask!1943 #b00000000000000000111111111111111) (= mask!1943 #b00000000000000001111111111111111) (= mask!1943 #b00000000000000011111111111111111) (= mask!1943 #b00000000000000111111111111111111) (= mask!1943 #b00000000000001111111111111111111) (= mask!1943 #b00000000000011111111111111111111) (= mask!1943 #b00000000000111111111111111111111) (= mask!1943 #b00000000001111111111111111111111) (= mask!1943 #b00000000011111111111111111111111) (= mask!1943 #b00000000111111111111111111111111) (= mask!1943 #b00000001111111111111111111111111) (= mask!1943 #b00000011111111111111111111111111) (= mask!1943 #b00000111111111111111111111111111) (= mask!1943 #b00001111111111111111111111111111) (= mask!1943 #b00011111111111111111111111111111) (= mask!1943 #b00111111111111111111111111111111)) (bvsle mask!1943 #b00111111111111111111111111111111)))))

(assert (=> start!35932 d!71757))

(declare-fun d!71759 () Bool)

(assert (=> d!71759 (= (array_inv!7060 _values!1277) (bvsge (size!9955 _values!1277) #b00000000000000000000000000000000))))

(assert (=> start!35932 d!71759))

(declare-fun d!71761 () Bool)

(assert (=> d!71761 (= (array_inv!7061 _keys!1541) (bvsge (size!9956 _keys!1541) #b00000000000000000000000000000000))))

(assert (=> start!35932 d!71761))

(declare-fun b!360944 () Bool)

(declare-fun e!221003 () Bool)

(declare-fun e!221005 () Bool)

(assert (=> b!360944 (= e!221003 e!221005)))

(declare-fun lt!166485 () (_ BitVec 64))

(assert (=> b!360944 (= lt!166485 (select (arr!9604 _keys!1541) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!11097 0))(
  ( (Unit!11098) )
))
(declare-fun lt!166486 () Unit!11097)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!20231 (_ BitVec 64) (_ BitVec 32)) Unit!11097)

(assert (=> b!360944 (= lt!166486 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1541 lt!166485 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!20231 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!360944 (arrayContainsKey!0 _keys!1541 lt!166485 #b00000000000000000000000000000000)))

(declare-fun lt!166484 () Unit!11097)

(assert (=> b!360944 (= lt!166484 lt!166486)))

(declare-fun res!200864 () Bool)

(declare-datatypes ((SeekEntryResult!3480 0))(
  ( (MissingZero!3480 (index!16099 (_ BitVec 32))) (Found!3480 (index!16100 (_ BitVec 32))) (Intermediate!3480 (undefined!4292 Bool) (index!16101 (_ BitVec 32)) (x!35961 (_ BitVec 32))) (Undefined!3480) (MissingVacant!3480 (index!16102 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!20231 (_ BitVec 32)) SeekEntryResult!3480)

(assert (=> b!360944 (= res!200864 (= (seekEntryOrOpen!0 (select (arr!9604 _keys!1541) #b00000000000000000000000000000000) _keys!1541 mask!1943) (Found!3480 #b00000000000000000000000000000000)))))

(assert (=> b!360944 (=> (not res!200864) (not e!221005))))

(declare-fun b!360945 () Bool)

(declare-fun call!27164 () Bool)

(assert (=> b!360945 (= e!221003 call!27164)))

(declare-fun b!360946 () Bool)

(assert (=> b!360946 (= e!221005 call!27164)))

(declare-fun b!360947 () Bool)

(declare-fun e!221004 () Bool)

(assert (=> b!360947 (= e!221004 e!221003)))

(declare-fun c!53639 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!360947 (= c!53639 (validKeyInArray!0 (select (arr!9604 _keys!1541) #b00000000000000000000000000000000)))))

(declare-fun d!71763 () Bool)

(declare-fun res!200865 () Bool)

(assert (=> d!71763 (=> res!200865 e!221004)))

(assert (=> d!71763 (= res!200865 (bvsge #b00000000000000000000000000000000 (size!9956 _keys!1541)))))

(assert (=> d!71763 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1541 mask!1943) e!221004)))

(declare-fun bm!27161 () Bool)

(assert (=> bm!27161 (= call!27164 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1541 mask!1943))))

(assert (= (and d!71763 (not res!200865)) b!360947))

(assert (= (and b!360947 c!53639) b!360944))

(assert (= (and b!360947 (not c!53639)) b!360945))

(assert (= (and b!360944 res!200864) b!360946))

(assert (= (or b!360946 b!360945) bm!27161))

(declare-fun m!357925 () Bool)

(assert (=> b!360944 m!357925))

(declare-fun m!357927 () Bool)

(assert (=> b!360944 m!357927))

(declare-fun m!357929 () Bool)

(assert (=> b!360944 m!357929))

(assert (=> b!360944 m!357925))

(declare-fun m!357931 () Bool)

(assert (=> b!360944 m!357931))

(assert (=> b!360947 m!357925))

(assert (=> b!360947 m!357925))

(declare-fun m!357933 () Bool)

(assert (=> b!360947 m!357933))

(declare-fun m!357935 () Bool)

(assert (=> bm!27161 m!357935))

(assert (=> b!360913 d!71763))

(declare-fun mapNonEmpty!14052 () Bool)

(declare-fun mapRes!14052 () Bool)

(declare-fun tp!28128 () Bool)

(declare-fun e!221011 () Bool)

(assert (=> mapNonEmpty!14052 (= mapRes!14052 (and tp!28128 e!221011))))

(declare-fun mapRest!14052 () (Array (_ BitVec 32) ValueCell!3834))

(declare-fun mapValue!14052 () ValueCell!3834)

(declare-fun mapKey!14052 () (_ BitVec 32))

(assert (=> mapNonEmpty!14052 (= mapRest!14046 (store mapRest!14052 mapKey!14052 mapValue!14052))))

(declare-fun b!360955 () Bool)

(declare-fun e!221010 () Bool)

(assert (=> b!360955 (= e!221010 tp_is_empty!8355)))

(declare-fun mapIsEmpty!14052 () Bool)

(assert (=> mapIsEmpty!14052 mapRes!14052))

(declare-fun b!360954 () Bool)

(assert (=> b!360954 (= e!221011 tp_is_empty!8355)))

(declare-fun condMapEmpty!14052 () Bool)

(declare-fun mapDefault!14052 () ValueCell!3834)

(assert (=> mapNonEmpty!14046 (= condMapEmpty!14052 (= mapRest!14046 ((as const (Array (_ BitVec 32) ValueCell!3834)) mapDefault!14052)))))

(assert (=> mapNonEmpty!14046 (= tp!28122 (and e!221010 mapRes!14052))))

(assert (= (and mapNonEmpty!14046 condMapEmpty!14052) mapIsEmpty!14052))

(assert (= (and mapNonEmpty!14046 (not condMapEmpty!14052)) mapNonEmpty!14052))

(assert (= (and mapNonEmpty!14052 ((_ is ValueCellFull!3834) mapValue!14052)) b!360954))

(assert (= (and mapNonEmpty!14046 ((_ is ValueCellFull!3834) mapDefault!14052)) b!360955))

(declare-fun m!357937 () Bool)

(assert (=> mapNonEmpty!14052 m!357937))

(check-sat (not bm!27161) (not b!360947) (not mapNonEmpty!14052) tp_is_empty!8355 (not b!360944))
(check-sat)
