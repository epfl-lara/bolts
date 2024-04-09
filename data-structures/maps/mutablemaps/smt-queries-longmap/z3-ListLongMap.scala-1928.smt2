; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34224 () Bool)

(assert start!34224)

(declare-fun b_free!7239 () Bool)

(declare-fun b_next!7239 () Bool)

(assert (=> start!34224 (= b_free!7239 (not b_next!7239))))

(declare-fun tp!25251 () Bool)

(declare-fun b_and!14457 () Bool)

(assert (=> start!34224 (= tp!25251 b_and!14457)))

(declare-fun b!341084 () Bool)

(declare-fun res!188596 () Bool)

(declare-fun e!209203 () Bool)

(assert (=> b!341084 (=> (not res!188596) (not e!209203))))

(declare-datatypes ((array!17947 0))(
  ( (array!17948 (arr!8491 (Array (_ BitVec 32) (_ BitVec 64))) (size!8843 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17947)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17947 (_ BitVec 32)) Bool)

(assert (=> b!341084 (= res!188596 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!341085 () Bool)

(declare-fun e!209201 () Bool)

(assert (=> b!341085 (= e!209203 e!209201)))

(declare-fun res!188603 () Bool)

(assert (=> b!341085 (=> (not res!188603) (not e!209201))))

(declare-datatypes ((SeekEntryResult!3277 0))(
  ( (MissingZero!3277 (index!15287 (_ BitVec 32))) (Found!3277 (index!15288 (_ BitVec 32))) (Intermediate!3277 (undefined!4089 Bool) (index!15289 (_ BitVec 32)) (x!33978 (_ BitVec 32))) (Undefined!3277) (MissingVacant!3277 (index!15290 (_ BitVec 32))) )
))
(declare-fun lt!161703 () SeekEntryResult!3277)

(get-info :version)

(assert (=> b!341085 (= res!188603 (and (not ((_ is Found!3277) lt!161703)) (not ((_ is MissingZero!3277) lt!161703)) ((_ is MissingVacant!3277) lt!161703)))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17947 (_ BitVec 32)) SeekEntryResult!3277)

(assert (=> b!341085 (= lt!161703 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!341086 () Bool)

(declare-fun e!209205 () Bool)

(declare-fun e!209204 () Bool)

(declare-fun mapRes!12213 () Bool)

(assert (=> b!341086 (= e!209205 (and e!209204 mapRes!12213))))

(declare-fun condMapEmpty!12213 () Bool)

(declare-datatypes ((V!10565 0))(
  ( (V!10566 (val!3640 Int)) )
))
(declare-datatypes ((ValueCell!3252 0))(
  ( (ValueCellFull!3252 (v!5808 V!10565)) (EmptyCell!3252) )
))
(declare-datatypes ((array!17949 0))(
  ( (array!17950 (arr!8492 (Array (_ BitVec 32) ValueCell!3252)) (size!8844 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17949)

(declare-fun mapDefault!12213 () ValueCell!3252)

(assert (=> b!341086 (= condMapEmpty!12213 (= (arr!8492 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3252)) mapDefault!12213)))))

(declare-fun res!188597 () Bool)

(assert (=> start!34224 (=> (not res!188597) (not e!209203))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34224 (= res!188597 (validMask!0 mask!2385))))

(assert (=> start!34224 e!209203))

(assert (=> start!34224 true))

(declare-fun tp_is_empty!7191 () Bool)

(assert (=> start!34224 tp_is_empty!7191))

(assert (=> start!34224 tp!25251))

(declare-fun array_inv!6280 (array!17949) Bool)

(assert (=> start!34224 (and (array_inv!6280 _values!1525) e!209205)))

(declare-fun array_inv!6281 (array!17947) Bool)

(assert (=> start!34224 (array_inv!6281 _keys!1895)))

(declare-fun b!341087 () Bool)

(assert (=> b!341087 (= e!209201 false)))

(declare-fun lt!161702 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!17947 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!341087 (= lt!161702 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!12213 () Bool)

(declare-fun tp!25250 () Bool)

(declare-fun e!209200 () Bool)

(assert (=> mapNonEmpty!12213 (= mapRes!12213 (and tp!25250 e!209200))))

(declare-fun mapRest!12213 () (Array (_ BitVec 32) ValueCell!3252))

(declare-fun mapValue!12213 () ValueCell!3252)

(declare-fun mapKey!12213 () (_ BitVec 32))

(assert (=> mapNonEmpty!12213 (= (arr!8492 _values!1525) (store mapRest!12213 mapKey!12213 mapValue!12213))))

(declare-fun b!341088 () Bool)

(declare-fun res!188598 () Bool)

(assert (=> b!341088 (=> (not res!188598) (not e!209201))))

(declare-fun arrayContainsKey!0 (array!17947 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!341088 (= res!188598 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!341089 () Bool)

(assert (=> b!341089 (= e!209204 tp_is_empty!7191)))

(declare-fun b!341090 () Bool)

(declare-fun res!188600 () Bool)

(assert (=> b!341090 (=> (not res!188600) (not e!209203))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!341090 (= res!188600 (and (= (size!8844 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8843 _keys!1895) (size!8844 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!12213 () Bool)

(assert (=> mapIsEmpty!12213 mapRes!12213))

(declare-fun b!341091 () Bool)

(declare-fun res!188601 () Bool)

(assert (=> b!341091 (=> (not res!188601) (not e!209203))))

(declare-datatypes ((List!4905 0))(
  ( (Nil!4902) (Cons!4901 (h!5757 (_ BitVec 64)) (t!10021 List!4905)) )
))
(declare-fun arrayNoDuplicates!0 (array!17947 (_ BitVec 32) List!4905) Bool)

(assert (=> b!341091 (= res!188601 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4902))))

(declare-fun b!341092 () Bool)

(declare-fun res!188602 () Bool)

(assert (=> b!341092 (=> (not res!188602) (not e!209203))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!341092 (= res!188602 (validKeyInArray!0 k0!1348))))

(declare-fun b!341093 () Bool)

(assert (=> b!341093 (= e!209200 tp_is_empty!7191)))

(declare-fun b!341094 () Bool)

(declare-fun res!188599 () Bool)

(assert (=> b!341094 (=> (not res!188599) (not e!209203))))

(declare-fun zeroValue!1467 () V!10565)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10565)

(declare-datatypes ((tuple2!5262 0))(
  ( (tuple2!5263 (_1!2641 (_ BitVec 64)) (_2!2641 V!10565)) )
))
(declare-datatypes ((List!4906 0))(
  ( (Nil!4903) (Cons!4902 (h!5758 tuple2!5262) (t!10022 List!4906)) )
))
(declare-datatypes ((ListLongMap!4189 0))(
  ( (ListLongMap!4190 (toList!2110 List!4906)) )
))
(declare-fun contains!2160 (ListLongMap!4189 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1630 (array!17947 array!17949 (_ BitVec 32) (_ BitVec 32) V!10565 V!10565 (_ BitVec 32) Int) ListLongMap!4189)

(assert (=> b!341094 (= res!188599 (not (contains!2160 (getCurrentListMap!1630 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(assert (= (and start!34224 res!188597) b!341090))

(assert (= (and b!341090 res!188600) b!341084))

(assert (= (and b!341084 res!188596) b!341091))

(assert (= (and b!341091 res!188601) b!341092))

(assert (= (and b!341092 res!188602) b!341094))

(assert (= (and b!341094 res!188599) b!341085))

(assert (= (and b!341085 res!188603) b!341088))

(assert (= (and b!341088 res!188598) b!341087))

(assert (= (and b!341086 condMapEmpty!12213) mapIsEmpty!12213))

(assert (= (and b!341086 (not condMapEmpty!12213)) mapNonEmpty!12213))

(assert (= (and mapNonEmpty!12213 ((_ is ValueCellFull!3252) mapValue!12213)) b!341093))

(assert (= (and b!341086 ((_ is ValueCellFull!3252) mapDefault!12213)) b!341089))

(assert (= start!34224 b!341086))

(declare-fun m!343599 () Bool)

(assert (=> b!341091 m!343599))

(declare-fun m!343601 () Bool)

(assert (=> b!341087 m!343601))

(declare-fun m!343603 () Bool)

(assert (=> mapNonEmpty!12213 m!343603))

(declare-fun m!343605 () Bool)

(assert (=> start!34224 m!343605))

(declare-fun m!343607 () Bool)

(assert (=> start!34224 m!343607))

(declare-fun m!343609 () Bool)

(assert (=> start!34224 m!343609))

(declare-fun m!343611 () Bool)

(assert (=> b!341088 m!343611))

(declare-fun m!343613 () Bool)

(assert (=> b!341084 m!343613))

(declare-fun m!343615 () Bool)

(assert (=> b!341092 m!343615))

(declare-fun m!343617 () Bool)

(assert (=> b!341085 m!343617))

(declare-fun m!343619 () Bool)

(assert (=> b!341094 m!343619))

(assert (=> b!341094 m!343619))

(declare-fun m!343621 () Bool)

(assert (=> b!341094 m!343621))

(check-sat (not mapNonEmpty!12213) (not b!341088) (not b!341085) (not start!34224) (not b!341084) (not b!341091) (not b_next!7239) b_and!14457 tp_is_empty!7191 (not b!341087) (not b!341094) (not b!341092))
(check-sat b_and!14457 (not b_next!7239))
