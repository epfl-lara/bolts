; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82924 () Bool)

(assert start!82924)

(declare-fun b_free!19023 () Bool)

(declare-fun b_next!19023 () Bool)

(assert (=> start!82924 (= b_free!19023 (not b_next!19023))))

(declare-fun tp!66198 () Bool)

(declare-fun b_and!30529 () Bool)

(assert (=> start!82924 (= tp!66198 b_and!30529)))

(declare-fun res!647465 () Bool)

(declare-fun e!545130 () Bool)

(assert (=> start!82924 (=> (not res!647465) (not e!545130))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82924 (= res!647465 (validMask!0 mask!2110))))

(assert (=> start!82924 e!545130))

(assert (=> start!82924 true))

(declare-datatypes ((V!34091 0))(
  ( (V!34092 (val!10966 Int)) )
))
(declare-datatypes ((ValueCell!10434 0))(
  ( (ValueCellFull!10434 (v!13524 V!34091)) (EmptyCell!10434) )
))
(declare-datatypes ((array!59721 0))(
  ( (array!59722 (arr!28725 (Array (_ BitVec 32) ValueCell!10434)) (size!29205 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59721)

(declare-fun e!545133 () Bool)

(declare-fun array_inv!22137 (array!59721) Bool)

(assert (=> start!82924 (and (array_inv!22137 _values!1400) e!545133)))

(declare-datatypes ((array!59723 0))(
  ( (array!59724 (arr!28726 (Array (_ BitVec 32) (_ BitVec 64))) (size!29206 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59723)

(declare-fun array_inv!22138 (array!59723) Bool)

(assert (=> start!82924 (array_inv!22138 _keys!1686)))

(assert (=> start!82924 tp!66198))

(declare-fun tp_is_empty!21831 () Bool)

(assert (=> start!82924 tp_is_empty!21831))

(declare-fun b!967068 () Bool)

(declare-fun res!647467 () Bool)

(assert (=> b!967068 (=> (not res!647467) (not e!545130))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59723 (_ BitVec 32)) Bool)

(assert (=> b!967068 (= res!647467 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!967069 () Bool)

(declare-fun e!545131 () Bool)

(assert (=> b!967069 (= e!545131 tp_is_empty!21831)))

(declare-fun mapNonEmpty!34741 () Bool)

(declare-fun mapRes!34741 () Bool)

(declare-fun tp!66199 () Bool)

(declare-fun e!545134 () Bool)

(assert (=> mapNonEmpty!34741 (= mapRes!34741 (and tp!66199 e!545134))))

(declare-fun mapRest!34741 () (Array (_ BitVec 32) ValueCell!10434))

(declare-fun mapValue!34741 () ValueCell!10434)

(declare-fun mapKey!34741 () (_ BitVec 32))

(assert (=> mapNonEmpty!34741 (= (arr!28725 _values!1400) (store mapRest!34741 mapKey!34741 mapValue!34741))))

(declare-fun b!967070 () Bool)

(assert (=> b!967070 (= e!545134 tp_is_empty!21831)))

(declare-fun b!967071 () Bool)

(declare-fun res!647466 () Bool)

(assert (=> b!967071 (=> (not res!647466) (not e!545130))))

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!967071 (= res!647466 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29206 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29206 _keys!1686))))))

(declare-fun b!967072 () Bool)

(declare-fun res!647464 () Bool)

(assert (=> b!967072 (=> (not res!647464) (not e!545130))))

(declare-datatypes ((List!20068 0))(
  ( (Nil!20065) (Cons!20064 (h!21226 (_ BitVec 64)) (t!28439 List!20068)) )
))
(declare-fun arrayNoDuplicates!0 (array!59723 (_ BitVec 32) List!20068) Bool)

(assert (=> b!967072 (= res!647464 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!20065))))

(declare-fun b!967073 () Bool)

(declare-fun res!647468 () Bool)

(assert (=> b!967073 (=> (not res!647468) (not e!545130))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(assert (=> b!967073 (= res!647468 (and (= (size!29205 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29206 _keys!1686) (size!29205 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!34741 () Bool)

(assert (=> mapIsEmpty!34741 mapRes!34741))

(declare-fun b!967074 () Bool)

(declare-fun res!647470 () Bool)

(assert (=> b!967074 (=> (not res!647470) (not e!545130))))

(declare-fun minValue!1342 () V!34091)

(declare-fun defaultEntry!1403 () Int)

(declare-fun zeroValue!1342 () V!34091)

(declare-datatypes ((tuple2!14194 0))(
  ( (tuple2!14195 (_1!7107 (_ BitVec 64)) (_2!7107 V!34091)) )
))
(declare-datatypes ((List!20069 0))(
  ( (Nil!20066) (Cons!20065 (h!21227 tuple2!14194) (t!28440 List!20069)) )
))
(declare-datatypes ((ListLongMap!12905 0))(
  ( (ListLongMap!12906 (toList!6468 List!20069)) )
))
(declare-fun contains!5519 (ListLongMap!12905 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3653 (array!59723 array!59721 (_ BitVec 32) (_ BitVec 32) V!34091 V!34091 (_ BitVec 32) Int) ListLongMap!12905)

(assert (=> b!967074 (= res!647470 (contains!5519 (getCurrentListMap!3653 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28726 _keys!1686) i!803)))))

(declare-fun b!967075 () Bool)

(assert (=> b!967075 (= e!545130 (not true))))

(assert (=> b!967075 (contains!5519 (getCurrentListMap!3653 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28726 _keys!1686) i!803))))

(declare-datatypes ((Unit!32289 0))(
  ( (Unit!32290) )
))
(declare-fun lt!431346 () Unit!32289)

(declare-fun lemmaInListMapFromThenInFromMinusOne!51 (array!59723 array!59721 (_ BitVec 32) (_ BitVec 32) V!34091 V!34091 (_ BitVec 32) (_ BitVec 32) Int) Unit!32289)

(assert (=> b!967075 (= lt!431346 (lemmaInListMapFromThenInFromMinusOne!51 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!967076 () Bool)

(assert (=> b!967076 (= e!545133 (and e!545131 mapRes!34741))))

(declare-fun condMapEmpty!34741 () Bool)

(declare-fun mapDefault!34741 () ValueCell!10434)

(assert (=> b!967076 (= condMapEmpty!34741 (= (arr!28725 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10434)) mapDefault!34741)))))

(declare-fun b!967077 () Bool)

(declare-fun res!647469 () Bool)

(assert (=> b!967077 (=> (not res!647469) (not e!545130))))

(assert (=> b!967077 (= res!647469 (bvsgt from!2084 newFrom!159))))

(declare-fun b!967078 () Bool)

(declare-fun res!647471 () Bool)

(assert (=> b!967078 (=> (not res!647471) (not e!545130))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!967078 (= res!647471 (validKeyInArray!0 (select (arr!28726 _keys!1686) i!803)))))

(assert (= (and start!82924 res!647465) b!967073))

(assert (= (and b!967073 res!647468) b!967068))

(assert (= (and b!967068 res!647467) b!967072))

(assert (= (and b!967072 res!647464) b!967071))

(assert (= (and b!967071 res!647466) b!967078))

(assert (= (and b!967078 res!647471) b!967074))

(assert (= (and b!967074 res!647470) b!967077))

(assert (= (and b!967077 res!647469) b!967075))

(assert (= (and b!967076 condMapEmpty!34741) mapIsEmpty!34741))

(assert (= (and b!967076 (not condMapEmpty!34741)) mapNonEmpty!34741))

(get-info :version)

(assert (= (and mapNonEmpty!34741 ((_ is ValueCellFull!10434) mapValue!34741)) b!967070))

(assert (= (and b!967076 ((_ is ValueCellFull!10434) mapDefault!34741)) b!967069))

(assert (= start!82924 b!967076))

(declare-fun m!895773 () Bool)

(assert (=> b!967078 m!895773))

(assert (=> b!967078 m!895773))

(declare-fun m!895775 () Bool)

(assert (=> b!967078 m!895775))

(declare-fun m!895777 () Bool)

(assert (=> b!967068 m!895777))

(declare-fun m!895779 () Bool)

(assert (=> b!967072 m!895779))

(declare-fun m!895781 () Bool)

(assert (=> b!967075 m!895781))

(assert (=> b!967075 m!895773))

(assert (=> b!967075 m!895781))

(assert (=> b!967075 m!895773))

(declare-fun m!895783 () Bool)

(assert (=> b!967075 m!895783))

(declare-fun m!895785 () Bool)

(assert (=> b!967075 m!895785))

(declare-fun m!895787 () Bool)

(assert (=> b!967074 m!895787))

(assert (=> b!967074 m!895773))

(assert (=> b!967074 m!895787))

(assert (=> b!967074 m!895773))

(declare-fun m!895789 () Bool)

(assert (=> b!967074 m!895789))

(declare-fun m!895791 () Bool)

(assert (=> start!82924 m!895791))

(declare-fun m!895793 () Bool)

(assert (=> start!82924 m!895793))

(declare-fun m!895795 () Bool)

(assert (=> start!82924 m!895795))

(declare-fun m!895797 () Bool)

(assert (=> mapNonEmpty!34741 m!895797))

(check-sat (not b!967078) (not mapNonEmpty!34741) (not b_next!19023) (not b!967072) (not b!967075) tp_is_empty!21831 b_and!30529 (not b!967068) (not b!967074) (not start!82924))
(check-sat b_and!30529 (not b_next!19023))
