; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82482 () Bool)

(assert start!82482)

(declare-fun b!961021 () Bool)

(declare-fun res!643336 () Bool)

(declare-fun e!541842 () Bool)

(assert (=> b!961021 (=> (not res!643336) (not e!541842))))

(declare-datatypes ((array!58919 0))(
  ( (array!58920 (arr!28326 (Array (_ BitVec 32) (_ BitVec 64))) (size!28806 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!58919)

(assert (=> b!961021 (= res!643336 (and (bvsle #b00000000000000000000000000000000 (size!28806 _keys!1686)) (bvslt (size!28806 _keys!1686) #b01111111111111111111111111111111)))))

(declare-fun mapIsEmpty!34105 () Bool)

(declare-fun mapRes!34105 () Bool)

(assert (=> mapIsEmpty!34105 mapRes!34105))

(declare-fun res!643338 () Bool)

(assert (=> start!82482 (=> (not res!643338) (not e!541842))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82482 (= res!643338 (validMask!0 mask!2110))))

(assert (=> start!82482 e!541842))

(assert (=> start!82482 true))

(declare-datatypes ((V!33531 0))(
  ( (V!33532 (val!10756 Int)) )
))
(declare-datatypes ((ValueCell!10224 0))(
  ( (ValueCellFull!10224 (v!13313 V!33531)) (EmptyCell!10224) )
))
(declare-datatypes ((array!58921 0))(
  ( (array!58922 (arr!28327 (Array (_ BitVec 32) ValueCell!10224)) (size!28807 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!58921)

(declare-fun e!541840 () Bool)

(declare-fun array_inv!21879 (array!58921) Bool)

(assert (=> start!82482 (and (array_inv!21879 _values!1400) e!541840)))

(declare-fun array_inv!21880 (array!58919) Bool)

(assert (=> start!82482 (array_inv!21880 _keys!1686)))

(declare-fun b!961022 () Bool)

(declare-fun res!643335 () Bool)

(assert (=> b!961022 (=> (not res!643335) (not e!541842))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(assert (=> b!961022 (= res!643335 (and (= (size!28807 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28806 _keys!1686) (size!28807 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!961023 () Bool)

(declare-fun e!541841 () Bool)

(assert (=> b!961023 (= e!541840 (and e!541841 mapRes!34105))))

(declare-fun condMapEmpty!34105 () Bool)

(declare-fun mapDefault!34105 () ValueCell!10224)

(assert (=> b!961023 (= condMapEmpty!34105 (= (arr!28327 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10224)) mapDefault!34105)))))

(declare-fun b!961024 () Bool)

(declare-fun e!541843 () Bool)

(declare-fun tp_is_empty!21411 () Bool)

(assert (=> b!961024 (= e!541843 tp_is_empty!21411)))

(declare-fun mapNonEmpty!34105 () Bool)

(declare-fun tp!65035 () Bool)

(assert (=> mapNonEmpty!34105 (= mapRes!34105 (and tp!65035 e!541843))))

(declare-fun mapKey!34105 () (_ BitVec 32))

(declare-fun mapRest!34105 () (Array (_ BitVec 32) ValueCell!10224))

(declare-fun mapValue!34105 () ValueCell!10224)

(assert (=> mapNonEmpty!34105 (= (arr!28327 _values!1400) (store mapRest!34105 mapKey!34105 mapValue!34105))))

(declare-fun b!961025 () Bool)

(assert (=> b!961025 (= e!541841 tp_is_empty!21411)))

(declare-fun b!961026 () Bool)

(declare-fun res!643337 () Bool)

(assert (=> b!961026 (=> (not res!643337) (not e!541842))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58919 (_ BitVec 32)) Bool)

(assert (=> b!961026 (= res!643337 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!961027 () Bool)

(declare-datatypes ((List!19802 0))(
  ( (Nil!19799) (Cons!19798 (h!20960 (_ BitVec 64)) (t!28173 List!19802)) )
))
(declare-fun noDuplicate!1372 (List!19802) Bool)

(assert (=> b!961027 (= e!541842 (not (noDuplicate!1372 Nil!19799)))))

(assert (= (and start!82482 res!643338) b!961022))

(assert (= (and b!961022 res!643335) b!961026))

(assert (= (and b!961026 res!643337) b!961021))

(assert (= (and b!961021 res!643336) b!961027))

(assert (= (and b!961023 condMapEmpty!34105) mapIsEmpty!34105))

(assert (= (and b!961023 (not condMapEmpty!34105)) mapNonEmpty!34105))

(get-info :version)

(assert (= (and mapNonEmpty!34105 ((_ is ValueCellFull!10224) mapValue!34105)) b!961024))

(assert (= (and b!961023 ((_ is ValueCellFull!10224) mapDefault!34105)) b!961025))

(assert (= start!82482 b!961023))

(declare-fun m!891171 () Bool)

(assert (=> start!82482 m!891171))

(declare-fun m!891173 () Bool)

(assert (=> start!82482 m!891173))

(declare-fun m!891175 () Bool)

(assert (=> start!82482 m!891175))

(declare-fun m!891177 () Bool)

(assert (=> mapNonEmpty!34105 m!891177))

(declare-fun m!891179 () Bool)

(assert (=> b!961026 m!891179))

(declare-fun m!891181 () Bool)

(assert (=> b!961027 m!891181))

(check-sat tp_is_empty!21411 (not b!961026) (not b!961027) (not mapNonEmpty!34105) (not start!82482))
(check-sat)
(get-model)

(declare-fun d!115963 () Bool)

(assert (=> d!115963 (= (validMask!0 mask!2110) (and (or (= mask!2110 #b00000000000000000000000000000111) (= mask!2110 #b00000000000000000000000000001111) (= mask!2110 #b00000000000000000000000000011111) (= mask!2110 #b00000000000000000000000000111111) (= mask!2110 #b00000000000000000000000001111111) (= mask!2110 #b00000000000000000000000011111111) (= mask!2110 #b00000000000000000000000111111111) (= mask!2110 #b00000000000000000000001111111111) (= mask!2110 #b00000000000000000000011111111111) (= mask!2110 #b00000000000000000000111111111111) (= mask!2110 #b00000000000000000001111111111111) (= mask!2110 #b00000000000000000011111111111111) (= mask!2110 #b00000000000000000111111111111111) (= mask!2110 #b00000000000000001111111111111111) (= mask!2110 #b00000000000000011111111111111111) (= mask!2110 #b00000000000000111111111111111111) (= mask!2110 #b00000000000001111111111111111111) (= mask!2110 #b00000000000011111111111111111111) (= mask!2110 #b00000000000111111111111111111111) (= mask!2110 #b00000000001111111111111111111111) (= mask!2110 #b00000000011111111111111111111111) (= mask!2110 #b00000000111111111111111111111111) (= mask!2110 #b00000001111111111111111111111111) (= mask!2110 #b00000011111111111111111111111111) (= mask!2110 #b00000111111111111111111111111111) (= mask!2110 #b00001111111111111111111111111111) (= mask!2110 #b00011111111111111111111111111111) (= mask!2110 #b00111111111111111111111111111111)) (bvsle mask!2110 #b00111111111111111111111111111111)))))

(assert (=> start!82482 d!115963))

(declare-fun d!115965 () Bool)

(assert (=> d!115965 (= (array_inv!21879 _values!1400) (bvsge (size!28807 _values!1400) #b00000000000000000000000000000000))))

(assert (=> start!82482 d!115965))

(declare-fun d!115967 () Bool)

(assert (=> d!115967 (= (array_inv!21880 _keys!1686) (bvsge (size!28806 _keys!1686) #b00000000000000000000000000000000))))

(assert (=> start!82482 d!115967))

(declare-fun b!961057 () Bool)

(declare-fun e!541867 () Bool)

(declare-fun call!41726 () Bool)

(assert (=> b!961057 (= e!541867 call!41726)))

(declare-fun b!961058 () Bool)

(declare-fun e!541868 () Bool)

(assert (=> b!961058 (= e!541867 e!541868)))

(declare-fun lt!430670 () (_ BitVec 64))

(assert (=> b!961058 (= lt!430670 (select (arr!28326 _keys!1686) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32181 0))(
  ( (Unit!32182) )
))
(declare-fun lt!430668 () Unit!32181)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!58919 (_ BitVec 64) (_ BitVec 32)) Unit!32181)

(assert (=> b!961058 (= lt!430668 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1686 lt!430670 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!58919 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!961058 (arrayContainsKey!0 _keys!1686 lt!430670 #b00000000000000000000000000000000)))

(declare-fun lt!430669 () Unit!32181)

(assert (=> b!961058 (= lt!430669 lt!430668)))

(declare-fun res!643355 () Bool)

(declare-datatypes ((SeekEntryResult!9183 0))(
  ( (MissingZero!9183 (index!39102 (_ BitVec 32))) (Found!9183 (index!39103 (_ BitVec 32))) (Intermediate!9183 (undefined!9995 Bool) (index!39104 (_ BitVec 32)) (x!82910 (_ BitVec 32))) (Undefined!9183) (MissingVacant!9183 (index!39105 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!58919 (_ BitVec 32)) SeekEntryResult!9183)

(assert (=> b!961058 (= res!643355 (= (seekEntryOrOpen!0 (select (arr!28326 _keys!1686) #b00000000000000000000000000000000) _keys!1686 mask!2110) (Found!9183 #b00000000000000000000000000000000)))))

(assert (=> b!961058 (=> (not res!643355) (not e!541868))))

(declare-fun d!115969 () Bool)

(declare-fun res!643356 () Bool)

(declare-fun e!541866 () Bool)

(assert (=> d!115969 (=> res!643356 e!541866)))

(assert (=> d!115969 (= res!643356 (bvsge #b00000000000000000000000000000000 (size!28806 _keys!1686)))))

(assert (=> d!115969 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110) e!541866)))

(declare-fun b!961059 () Bool)

(assert (=> b!961059 (= e!541868 call!41726)))

(declare-fun b!961060 () Bool)

(assert (=> b!961060 (= e!541866 e!541867)))

(declare-fun c!99832 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!961060 (= c!99832 (validKeyInArray!0 (select (arr!28326 _keys!1686) #b00000000000000000000000000000000)))))

(declare-fun bm!41723 () Bool)

(assert (=> bm!41723 (= call!41726 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1686 mask!2110))))

(assert (= (and d!115969 (not res!643356)) b!961060))

(assert (= (and b!961060 c!99832) b!961058))

(assert (= (and b!961060 (not c!99832)) b!961057))

(assert (= (and b!961058 res!643355) b!961059))

(assert (= (or b!961059 b!961057) bm!41723))

(declare-fun m!891195 () Bool)

(assert (=> b!961058 m!891195))

(declare-fun m!891197 () Bool)

(assert (=> b!961058 m!891197))

(declare-fun m!891199 () Bool)

(assert (=> b!961058 m!891199))

(assert (=> b!961058 m!891195))

(declare-fun m!891201 () Bool)

(assert (=> b!961058 m!891201))

(assert (=> b!961060 m!891195))

(assert (=> b!961060 m!891195))

(declare-fun m!891203 () Bool)

(assert (=> b!961060 m!891203))

(declare-fun m!891205 () Bool)

(assert (=> bm!41723 m!891205))

(assert (=> b!961026 d!115969))

(declare-fun d!115971 () Bool)

(declare-fun res!643361 () Bool)

(declare-fun e!541873 () Bool)

(assert (=> d!115971 (=> res!643361 e!541873)))

(assert (=> d!115971 (= res!643361 ((_ is Nil!19799) Nil!19799))))

(assert (=> d!115971 (= (noDuplicate!1372 Nil!19799) e!541873)))

(declare-fun b!961065 () Bool)

(declare-fun e!541874 () Bool)

(assert (=> b!961065 (= e!541873 e!541874)))

(declare-fun res!643362 () Bool)

(assert (=> b!961065 (=> (not res!643362) (not e!541874))))

(declare-fun contains!5393 (List!19802 (_ BitVec 64)) Bool)

(assert (=> b!961065 (= res!643362 (not (contains!5393 (t!28173 Nil!19799) (h!20960 Nil!19799))))))

(declare-fun b!961066 () Bool)

(assert (=> b!961066 (= e!541874 (noDuplicate!1372 (t!28173 Nil!19799)))))

(assert (= (and d!115971 (not res!643361)) b!961065))

(assert (= (and b!961065 res!643362) b!961066))

(declare-fun m!891207 () Bool)

(assert (=> b!961065 m!891207))

(declare-fun m!891209 () Bool)

(assert (=> b!961066 m!891209))

(assert (=> b!961027 d!115971))

(declare-fun condMapEmpty!34111 () Bool)

(declare-fun mapDefault!34111 () ValueCell!10224)

(assert (=> mapNonEmpty!34105 (= condMapEmpty!34111 (= mapRest!34105 ((as const (Array (_ BitVec 32) ValueCell!10224)) mapDefault!34111)))))

(declare-fun e!541880 () Bool)

(declare-fun mapRes!34111 () Bool)

(assert (=> mapNonEmpty!34105 (= tp!65035 (and e!541880 mapRes!34111))))

(declare-fun mapIsEmpty!34111 () Bool)

(assert (=> mapIsEmpty!34111 mapRes!34111))

(declare-fun mapNonEmpty!34111 () Bool)

(declare-fun tp!65041 () Bool)

(declare-fun e!541879 () Bool)

(assert (=> mapNonEmpty!34111 (= mapRes!34111 (and tp!65041 e!541879))))

(declare-fun mapRest!34111 () (Array (_ BitVec 32) ValueCell!10224))

(declare-fun mapValue!34111 () ValueCell!10224)

(declare-fun mapKey!34111 () (_ BitVec 32))

(assert (=> mapNonEmpty!34111 (= mapRest!34105 (store mapRest!34111 mapKey!34111 mapValue!34111))))

(declare-fun b!961073 () Bool)

(assert (=> b!961073 (= e!541879 tp_is_empty!21411)))

(declare-fun b!961074 () Bool)

(assert (=> b!961074 (= e!541880 tp_is_empty!21411)))

(assert (= (and mapNonEmpty!34105 condMapEmpty!34111) mapIsEmpty!34111))

(assert (= (and mapNonEmpty!34105 (not condMapEmpty!34111)) mapNonEmpty!34111))

(assert (= (and mapNonEmpty!34111 ((_ is ValueCellFull!10224) mapValue!34111)) b!961073))

(assert (= (and mapNonEmpty!34105 ((_ is ValueCellFull!10224) mapDefault!34111)) b!961074))

(declare-fun m!891211 () Bool)

(assert (=> mapNonEmpty!34111 m!891211))

(check-sat (not b!961066) (not b!961058) tp_is_empty!21411 (not mapNonEmpty!34111) (not b!961060) (not bm!41723) (not b!961065))
(check-sat)
