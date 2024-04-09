; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75804 () Bool)

(assert start!75804)

(declare-fun b!891051 () Bool)

(declare-fun b_free!15747 () Bool)

(declare-fun b_next!15747 () Bool)

(assert (=> b!891051 (= b_free!15747 (not b_next!15747))))

(declare-fun tp!55211 () Bool)

(declare-fun b_and!26005 () Bool)

(assert (=> b!891051 (= tp!55211 b_and!26005)))

(declare-fun b!891041 () Bool)

(declare-fun res!603813 () Bool)

(declare-fun e!497192 () Bool)

(assert (=> b!891041 (=> res!603813 e!497192)))

(declare-datatypes ((array!52116 0))(
  ( (array!52117 (arr!25060 (Array (_ BitVec 32) (_ BitVec 64))) (size!25505 (_ BitVec 32))) )
))
(declare-datatypes ((V!29065 0))(
  ( (V!29066 (val!9088 Int)) )
))
(declare-datatypes ((ValueCell!8556 0))(
  ( (ValueCellFull!8556 (v!11560 V!29065)) (EmptyCell!8556) )
))
(declare-datatypes ((array!52118 0))(
  ( (array!52119 (arr!25061 (Array (_ BitVec 32) ValueCell!8556)) (size!25506 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4128 0))(
  ( (LongMapFixedSize!4129 (defaultEntry!5261 Int) (mask!25743 (_ BitVec 32)) (extraKeys!4955 (_ BitVec 32)) (zeroValue!5059 V!29065) (minValue!5059 V!29065) (_size!2119 (_ BitVec 32)) (_keys!9940 array!52116) (_values!5246 array!52118) (_vacant!2119 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4128)

(assert (=> b!891041 (= res!603813 (or (not (= (size!25506 (_values!5246 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25743 thiss!1181)))) (not (= (size!25505 (_keys!9940 thiss!1181)) (size!25506 (_values!5246 thiss!1181)))) (bvslt (mask!25743 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!4955 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!4955 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!891042 () Bool)

(declare-fun e!497195 () Bool)

(assert (=> b!891042 (= e!497195 e!497192)))

(declare-fun res!603818 () Bool)

(assert (=> b!891042 (=> res!603818 e!497192)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!891042 (= res!603818 (not (validMask!0 (mask!25743 thiss!1181))))))

(declare-fun key!785 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!52116 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!891042 (arrayContainsKey!0 (_keys!9940 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30311 0))(
  ( (Unit!30312) )
))
(declare-fun lt!402519 () Unit!30311)

(declare-datatypes ((SeekEntryResult!8813 0))(
  ( (MissingZero!8813 (index!37622 (_ BitVec 32))) (Found!8813 (index!37623 (_ BitVec 32))) (Intermediate!8813 (undefined!9625 Bool) (index!37624 (_ BitVec 32)) (x!75710 (_ BitVec 32))) (Undefined!8813) (MissingVacant!8813 (index!37625 (_ BitVec 32))) )
))
(declare-fun lt!402518 () SeekEntryResult!8813)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52116 (_ BitVec 64) (_ BitVec 32)) Unit!30311)

(assert (=> b!891042 (= lt!402519 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9940 thiss!1181) key!785 (index!37623 lt!402518)))))

(declare-fun b!891043 () Bool)

(declare-fun res!603819 () Bool)

(assert (=> b!891043 (=> res!603819 e!497192)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52116 (_ BitVec 32)) Bool)

(assert (=> b!891043 (= res!603819 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9940 thiss!1181) (mask!25743 thiss!1181))))))

(declare-fun b!891044 () Bool)

(declare-fun e!497190 () Bool)

(assert (=> b!891044 (= e!497190 (not e!497195))))

(declare-fun res!603816 () Bool)

(assert (=> b!891044 (=> res!603816 e!497195)))

(get-info :version)

(assert (=> b!891044 (= res!603816 (not ((_ is Found!8813) lt!402518)))))

(declare-fun e!497198 () Bool)

(assert (=> b!891044 e!497198))

(declare-fun res!603817 () Bool)

(assert (=> b!891044 (=> res!603817 e!497198)))

(assert (=> b!891044 (= res!603817 (not ((_ is Found!8813) lt!402518)))))

(declare-fun lt!402516 () Unit!30311)

(declare-fun lemmaSeekEntryGivesInRangeIndex!34 (array!52116 array!52118 (_ BitVec 32) (_ BitVec 32) V!29065 V!29065 (_ BitVec 64)) Unit!30311)

(assert (=> b!891044 (= lt!402516 (lemmaSeekEntryGivesInRangeIndex!34 (_keys!9940 thiss!1181) (_values!5246 thiss!1181) (mask!25743 thiss!1181) (extraKeys!4955 thiss!1181) (zeroValue!5059 thiss!1181) (minValue!5059 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52116 (_ BitVec 32)) SeekEntryResult!8813)

(assert (=> b!891044 (= lt!402518 (seekEntry!0 key!785 (_keys!9940 thiss!1181) (mask!25743 thiss!1181)))))

(declare-fun b!891045 () Bool)

(declare-fun res!603815 () Bool)

(assert (=> b!891045 (=> (not res!603815) (not e!497190))))

(assert (=> b!891045 (= res!603815 (not (= key!785 (bvneg key!785))))))

(declare-fun mapNonEmpty!28667 () Bool)

(declare-fun mapRes!28667 () Bool)

(declare-fun tp!55210 () Bool)

(declare-fun e!497191 () Bool)

(assert (=> mapNonEmpty!28667 (= mapRes!28667 (and tp!55210 e!497191))))

(declare-fun mapKey!28667 () (_ BitVec 32))

(declare-fun mapRest!28667 () (Array (_ BitVec 32) ValueCell!8556))

(declare-fun mapValue!28667 () ValueCell!8556)

(assert (=> mapNonEmpty!28667 (= (arr!25061 (_values!5246 thiss!1181)) (store mapRest!28667 mapKey!28667 mapValue!28667))))

(declare-fun res!603814 () Bool)

(assert (=> start!75804 (=> (not res!603814) (not e!497190))))

(declare-fun valid!1590 (LongMapFixedSize!4128) Bool)

(assert (=> start!75804 (= res!603814 (valid!1590 thiss!1181))))

(assert (=> start!75804 e!497190))

(declare-fun e!497194 () Bool)

(assert (=> start!75804 e!497194))

(assert (=> start!75804 true))

(declare-fun b!891046 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!891046 (= e!497198 (inRange!0 (index!37623 lt!402518) (mask!25743 thiss!1181)))))

(declare-fun mapIsEmpty!28667 () Bool)

(assert (=> mapIsEmpty!28667 mapRes!28667))

(declare-fun b!891047 () Bool)

(declare-fun e!497193 () Bool)

(declare-fun e!497197 () Bool)

(assert (=> b!891047 (= e!497193 (and e!497197 mapRes!28667))))

(declare-fun condMapEmpty!28667 () Bool)

(declare-fun mapDefault!28667 () ValueCell!8556)

(assert (=> b!891047 (= condMapEmpty!28667 (= (arr!25061 (_values!5246 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8556)) mapDefault!28667)))))

(declare-fun b!891048 () Bool)

(declare-fun tp_is_empty!18075 () Bool)

(assert (=> b!891048 (= e!497191 tp_is_empty!18075)))

(declare-fun b!891049 () Bool)

(assert (=> b!891049 (= e!497197 tp_is_empty!18075)))

(declare-fun b!891050 () Bool)

(assert (=> b!891050 (= e!497192 true)))

(declare-fun lt!402517 () Bool)

(declare-datatypes ((List!17817 0))(
  ( (Nil!17814) (Cons!17813 (h!18944 (_ BitVec 64)) (t!25124 List!17817)) )
))
(declare-fun arrayNoDuplicates!0 (array!52116 (_ BitVec 32) List!17817) Bool)

(assert (=> b!891050 (= lt!402517 (arrayNoDuplicates!0 (_keys!9940 thiss!1181) #b00000000000000000000000000000000 Nil!17814))))

(declare-fun array_inv!19668 (array!52116) Bool)

(declare-fun array_inv!19669 (array!52118) Bool)

(assert (=> b!891051 (= e!497194 (and tp!55211 tp_is_empty!18075 (array_inv!19668 (_keys!9940 thiss!1181)) (array_inv!19669 (_values!5246 thiss!1181)) e!497193))))

(assert (= (and start!75804 res!603814) b!891045))

(assert (= (and b!891045 res!603815) b!891044))

(assert (= (and b!891044 (not res!603817)) b!891046))

(assert (= (and b!891044 (not res!603816)) b!891042))

(assert (= (and b!891042 (not res!603818)) b!891041))

(assert (= (and b!891041 (not res!603813)) b!891043))

(assert (= (and b!891043 (not res!603819)) b!891050))

(assert (= (and b!891047 condMapEmpty!28667) mapIsEmpty!28667))

(assert (= (and b!891047 (not condMapEmpty!28667)) mapNonEmpty!28667))

(assert (= (and mapNonEmpty!28667 ((_ is ValueCellFull!8556) mapValue!28667)) b!891048))

(assert (= (and b!891047 ((_ is ValueCellFull!8556) mapDefault!28667)) b!891049))

(assert (= b!891051 b!891047))

(assert (= start!75804 b!891051))

(declare-fun m!829489 () Bool)

(assert (=> b!891046 m!829489))

(declare-fun m!829491 () Bool)

(assert (=> b!891050 m!829491))

(declare-fun m!829493 () Bool)

(assert (=> b!891051 m!829493))

(declare-fun m!829495 () Bool)

(assert (=> b!891051 m!829495))

(declare-fun m!829497 () Bool)

(assert (=> start!75804 m!829497))

(declare-fun m!829499 () Bool)

(assert (=> b!891043 m!829499))

(declare-fun m!829501 () Bool)

(assert (=> b!891044 m!829501))

(declare-fun m!829503 () Bool)

(assert (=> b!891044 m!829503))

(declare-fun m!829505 () Bool)

(assert (=> b!891042 m!829505))

(declare-fun m!829507 () Bool)

(assert (=> b!891042 m!829507))

(declare-fun m!829509 () Bool)

(assert (=> b!891042 m!829509))

(declare-fun m!829511 () Bool)

(assert (=> mapNonEmpty!28667 m!829511))

(check-sat (not b!891051) tp_is_empty!18075 (not mapNonEmpty!28667) (not b!891043) (not b!891050) (not b!891046) (not b_next!15747) (not b!891042) (not b!891044) (not start!75804) b_and!26005)
(check-sat b_and!26005 (not b_next!15747))
