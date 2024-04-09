; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33646 () Bool)

(assert start!33646)

(declare-fun b_free!6873 () Bool)

(declare-fun b_next!6873 () Bool)

(assert (=> start!33646 (= b_free!6873 (not b_next!6873))))

(declare-fun tp!24123 () Bool)

(declare-fun b_and!14071 () Bool)

(assert (=> start!33646 (= tp!24123 b_and!14071)))

(declare-fun b!333706 () Bool)

(declare-fun e!204898 () Bool)

(declare-fun e!204900 () Bool)

(assert (=> b!333706 (= e!204898 e!204900)))

(declare-fun res!183945 () Bool)

(assert (=> b!333706 (=> (not res!183945) (not e!204900))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3160 0))(
  ( (MissingZero!3160 (index!14819 (_ BitVec 32))) (Found!3160 (index!14820 (_ BitVec 32))) (Intermediate!3160 (undefined!3972 Bool) (index!14821 (_ BitVec 32)) (x!33273 (_ BitVec 32))) (Undefined!3160) (MissingVacant!3160 (index!14822 (_ BitVec 32))) )
))
(declare-fun lt!159386 () SeekEntryResult!3160)

(declare-datatypes ((array!17241 0))(
  ( (array!17242 (arr!8148 (Array (_ BitVec 32) (_ BitVec 64))) (size!8500 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17241)

(get-info :version)

(assert (=> b!333706 (= res!183945 (and ((_ is Found!3160) lt!159386) (= (select (arr!8148 _keys!1895) (index!14820 lt!159386)) k0!1348)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17241 (_ BitVec 32)) SeekEntryResult!3160)

(assert (=> b!333706 (= lt!159386 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!333707 () Bool)

(declare-fun e!204897 () Bool)

(declare-fun e!204899 () Bool)

(declare-fun mapRes!11634 () Bool)

(assert (=> b!333707 (= e!204897 (and e!204899 mapRes!11634))))

(declare-fun condMapEmpty!11634 () Bool)

(declare-datatypes ((V!10077 0))(
  ( (V!10078 (val!3457 Int)) )
))
(declare-datatypes ((ValueCell!3069 0))(
  ( (ValueCellFull!3069 (v!5615 V!10077)) (EmptyCell!3069) )
))
(declare-datatypes ((array!17243 0))(
  ( (array!17244 (arr!8149 (Array (_ BitVec 32) ValueCell!3069)) (size!8501 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17243)

(declare-fun mapDefault!11634 () ValueCell!3069)

(assert (=> b!333707 (= condMapEmpty!11634 (= (arr!8149 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3069)) mapDefault!11634)))))

(declare-fun b!333708 () Bool)

(declare-fun e!204895 () Bool)

(declare-fun tp_is_empty!6825 () Bool)

(assert (=> b!333708 (= e!204895 tp_is_empty!6825)))

(declare-fun mapIsEmpty!11634 () Bool)

(assert (=> mapIsEmpty!11634 mapRes!11634))

(declare-fun b!333709 () Bool)

(declare-fun res!183949 () Bool)

(assert (=> b!333709 (=> (not res!183949) (not e!204898))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!333709 (= res!183949 (validKeyInArray!0 k0!1348))))

(declare-fun res!183950 () Bool)

(assert (=> start!33646 (=> (not res!183950) (not e!204898))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33646 (= res!183950 (validMask!0 mask!2385))))

(assert (=> start!33646 e!204898))

(assert (=> start!33646 true))

(assert (=> start!33646 tp_is_empty!6825))

(assert (=> start!33646 tp!24123))

(declare-fun array_inv!6056 (array!17243) Bool)

(assert (=> start!33646 (and (array_inv!6056 _values!1525) e!204897)))

(declare-fun array_inv!6057 (array!17241) Bool)

(assert (=> start!33646 (array_inv!6057 _keys!1895)))

(declare-fun b!333710 () Bool)

(declare-fun res!183947 () Bool)

(assert (=> b!333710 (=> (not res!183947) (not e!204898))))

(declare-datatypes ((List!4668 0))(
  ( (Nil!4665) (Cons!4664 (h!5520 (_ BitVec 64)) (t!9764 List!4668)) )
))
(declare-fun arrayNoDuplicates!0 (array!17241 (_ BitVec 32) List!4668) Bool)

(assert (=> b!333710 (= res!183947 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4665))))

(declare-fun b!333711 () Bool)

(assert (=> b!333711 (= e!204899 tp_is_empty!6825)))

(declare-fun b!333712 () Bool)

(assert (=> b!333712 (= e!204900 (not true))))

(declare-fun arrayContainsKey!0 (array!17241 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!333712 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!10378 0))(
  ( (Unit!10379) )
))
(declare-fun lt!159387 () Unit!10378)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17241 (_ BitVec 64) (_ BitVec 32)) Unit!10378)

(assert (=> b!333712 (= lt!159387 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k0!1348 (index!14820 lt!159386)))))

(declare-fun b!333713 () Bool)

(declare-fun res!183946 () Bool)

(assert (=> b!333713 (=> (not res!183946) (not e!204898))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17241 (_ BitVec 32)) Bool)

(assert (=> b!333713 (= res!183946 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!333714 () Bool)

(declare-fun res!183948 () Bool)

(assert (=> b!333714 (=> (not res!183948) (not e!204898))))

(declare-fun zeroValue!1467 () V!10077)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10077)

(declare-datatypes ((tuple2!5026 0))(
  ( (tuple2!5027 (_1!2523 (_ BitVec 64)) (_2!2523 V!10077)) )
))
(declare-datatypes ((List!4669 0))(
  ( (Nil!4666) (Cons!4665 (h!5521 tuple2!5026) (t!9765 List!4669)) )
))
(declare-datatypes ((ListLongMap!3953 0))(
  ( (ListLongMap!3954 (toList!1992 List!4669)) )
))
(declare-fun contains!2032 (ListLongMap!3953 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1515 (array!17241 array!17243 (_ BitVec 32) (_ BitVec 32) V!10077 V!10077 (_ BitVec 32) Int) ListLongMap!3953)

(assert (=> b!333714 (= res!183948 (not (contains!2032 (getCurrentListMap!1515 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun mapNonEmpty!11634 () Bool)

(declare-fun tp!24122 () Bool)

(assert (=> mapNonEmpty!11634 (= mapRes!11634 (and tp!24122 e!204895))))

(declare-fun mapRest!11634 () (Array (_ BitVec 32) ValueCell!3069))

(declare-fun mapValue!11634 () ValueCell!3069)

(declare-fun mapKey!11634 () (_ BitVec 32))

(assert (=> mapNonEmpty!11634 (= (arr!8149 _values!1525) (store mapRest!11634 mapKey!11634 mapValue!11634))))

(declare-fun b!333715 () Bool)

(declare-fun res!183944 () Bool)

(assert (=> b!333715 (=> (not res!183944) (not e!204898))))

(assert (=> b!333715 (= res!183944 (and (= (size!8501 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8500 _keys!1895) (size!8501 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!333716 () Bool)

(declare-fun res!183943 () Bool)

(assert (=> b!333716 (=> (not res!183943) (not e!204900))))

(assert (=> b!333716 (= res!183943 (arrayContainsKey!0 _keys!1895 k0!1348 (index!14820 lt!159386)))))

(assert (= (and start!33646 res!183950) b!333715))

(assert (= (and b!333715 res!183944) b!333713))

(assert (= (and b!333713 res!183946) b!333710))

(assert (= (and b!333710 res!183947) b!333709))

(assert (= (and b!333709 res!183949) b!333714))

(assert (= (and b!333714 res!183948) b!333706))

(assert (= (and b!333706 res!183945) b!333716))

(assert (= (and b!333716 res!183943) b!333712))

(assert (= (and b!333707 condMapEmpty!11634) mapIsEmpty!11634))

(assert (= (and b!333707 (not condMapEmpty!11634)) mapNonEmpty!11634))

(assert (= (and mapNonEmpty!11634 ((_ is ValueCellFull!3069) mapValue!11634)) b!333708))

(assert (= (and b!333707 ((_ is ValueCellFull!3069) mapDefault!11634)) b!333711))

(assert (= start!33646 b!333707))

(declare-fun m!337893 () Bool)

(assert (=> b!333710 m!337893))

(declare-fun m!337895 () Bool)

(assert (=> b!333709 m!337895))

(declare-fun m!337897 () Bool)

(assert (=> b!333712 m!337897))

(declare-fun m!337899 () Bool)

(assert (=> b!333712 m!337899))

(declare-fun m!337901 () Bool)

(assert (=> b!333713 m!337901))

(declare-fun m!337903 () Bool)

(assert (=> start!33646 m!337903))

(declare-fun m!337905 () Bool)

(assert (=> start!33646 m!337905))

(declare-fun m!337907 () Bool)

(assert (=> start!33646 m!337907))

(declare-fun m!337909 () Bool)

(assert (=> mapNonEmpty!11634 m!337909))

(declare-fun m!337911 () Bool)

(assert (=> b!333716 m!337911))

(declare-fun m!337913 () Bool)

(assert (=> b!333714 m!337913))

(assert (=> b!333714 m!337913))

(declare-fun m!337915 () Bool)

(assert (=> b!333714 m!337915))

(declare-fun m!337917 () Bool)

(assert (=> b!333706 m!337917))

(declare-fun m!337919 () Bool)

(assert (=> b!333706 m!337919))

(check-sat (not b!333712) (not b!333713) (not start!33646) (not b!333709) (not b!333710) (not b!333714) b_and!14071 (not b_next!6873) (not b!333706) tp_is_empty!6825 (not b!333716) (not mapNonEmpty!11634))
(check-sat b_and!14071 (not b_next!6873))
