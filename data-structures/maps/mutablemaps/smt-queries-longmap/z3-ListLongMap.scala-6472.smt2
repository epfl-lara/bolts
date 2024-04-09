; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82702 () Bool)

(assert start!82702)

(declare-fun b_free!18807 () Bool)

(declare-fun b_next!18807 () Bool)

(assert (=> start!82702 (= b_free!18807 (not b_next!18807))))

(declare-fun tp!65541 () Bool)

(declare-fun b_and!30313 () Bool)

(assert (=> start!82702 (= tp!65541 b_and!30313)))

(declare-fun mapIsEmpty!34408 () Bool)

(declare-fun mapRes!34408 () Bool)

(assert (=> mapIsEmpty!34408 mapRes!34408))

(declare-fun b!963738 () Bool)

(declare-fun res!645140 () Bool)

(declare-fun e!543388 () Bool)

(assert (=> b!963738 (=> (not res!645140) (not e!543388))))

(declare-datatypes ((array!59293 0))(
  ( (array!59294 (arr!28511 (Array (_ BitVec 32) (_ BitVec 64))) (size!28991 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59293)

(declare-datatypes ((List!19911 0))(
  ( (Nil!19908) (Cons!19907 (h!21069 (_ BitVec 64)) (t!28282 List!19911)) )
))
(declare-fun arrayNoDuplicates!0 (array!59293 (_ BitVec 32) List!19911) Bool)

(assert (=> b!963738 (= res!645140 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19908))))

(declare-fun b!963739 () Bool)

(declare-fun e!543386 () Bool)

(declare-fun tp_is_empty!21609 () Bool)

(assert (=> b!963739 (= e!543386 tp_is_empty!21609)))

(declare-fun b!963740 () Bool)

(declare-fun e!543387 () Bool)

(declare-fun e!543384 () Bool)

(assert (=> b!963740 (= e!543387 (and e!543384 mapRes!34408))))

(declare-fun condMapEmpty!34408 () Bool)

(declare-datatypes ((V!33795 0))(
  ( (V!33796 (val!10855 Int)) )
))
(declare-datatypes ((ValueCell!10323 0))(
  ( (ValueCellFull!10323 (v!13413 V!33795)) (EmptyCell!10323) )
))
(declare-datatypes ((array!59295 0))(
  ( (array!59296 (arr!28512 (Array (_ BitVec 32) ValueCell!10323)) (size!28992 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59295)

(declare-fun mapDefault!34408 () ValueCell!10323)

(assert (=> b!963740 (= condMapEmpty!34408 (= (arr!28512 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10323)) mapDefault!34408)))))

(declare-fun b!963741 () Bool)

(declare-fun res!645136 () Bool)

(assert (=> b!963741 (=> (not res!645136) (not e!543388))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun mask!2110 () (_ BitVec 32))

(assert (=> b!963741 (= res!645136 (and (= (size!28992 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28991 _keys!1686) (size!28992 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!34408 () Bool)

(declare-fun tp!65542 () Bool)

(assert (=> mapNonEmpty!34408 (= mapRes!34408 (and tp!65542 e!543386))))

(declare-fun mapRest!34408 () (Array (_ BitVec 32) ValueCell!10323))

(declare-fun mapKey!34408 () (_ BitVec 32))

(declare-fun mapValue!34408 () ValueCell!10323)

(assert (=> mapNonEmpty!34408 (= (arr!28512 _values!1400) (store mapRest!34408 mapKey!34408 mapValue!34408))))

(declare-fun b!963742 () Bool)

(assert (=> b!963742 (= e!543388 (not true))))

(declare-fun minValue!1342 () V!33795)

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!33795)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14032 0))(
  ( (tuple2!14033 (_1!7026 (_ BitVec 64)) (_2!7026 V!33795)) )
))
(declare-datatypes ((List!19912 0))(
  ( (Nil!19909) (Cons!19908 (h!21070 tuple2!14032) (t!28283 List!19912)) )
))
(declare-datatypes ((ListLongMap!12743 0))(
  ( (ListLongMap!12744 (toList!6387 List!19912)) )
))
(declare-fun contains!5441 (ListLongMap!12743 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3572 (array!59293 array!59295 (_ BitVec 32) (_ BitVec 32) V!33795 V!33795 (_ BitVec 32) Int) ListLongMap!12743)

(assert (=> b!963742 (contains!5441 (getCurrentListMap!3572 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28511 _keys!1686) i!803))))

(declare-datatypes ((Unit!32229 0))(
  ( (Unit!32230) )
))
(declare-fun lt!430959 () Unit!32229)

(declare-fun lemmaInListMapFromThenInFromMinusOne!23 (array!59293 array!59295 (_ BitVec 32) (_ BitVec 32) V!33795 V!33795 (_ BitVec 32) (_ BitVec 32) Int) Unit!32229)

(assert (=> b!963742 (= lt!430959 (lemmaInListMapFromThenInFromMinusOne!23 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!963743 () Bool)

(declare-fun res!645134 () Bool)

(assert (=> b!963743 (=> (not res!645134) (not e!543388))))

(assert (=> b!963743 (= res!645134 (contains!5441 (getCurrentListMap!3572 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28511 _keys!1686) i!803)))))

(declare-fun res!645135 () Bool)

(assert (=> start!82702 (=> (not res!645135) (not e!543388))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82702 (= res!645135 (validMask!0 mask!2110))))

(assert (=> start!82702 e!543388))

(assert (=> start!82702 true))

(declare-fun array_inv!22001 (array!59295) Bool)

(assert (=> start!82702 (and (array_inv!22001 _values!1400) e!543387)))

(declare-fun array_inv!22002 (array!59293) Bool)

(assert (=> start!82702 (array_inv!22002 _keys!1686)))

(assert (=> start!82702 tp!65541))

(assert (=> start!82702 tp_is_empty!21609))

(declare-fun b!963744 () Bool)

(declare-fun res!645137 () Bool)

(assert (=> b!963744 (=> (not res!645137) (not e!543388))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59293 (_ BitVec 32)) Bool)

(assert (=> b!963744 (= res!645137 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!963745 () Bool)

(declare-fun res!645133 () Bool)

(assert (=> b!963745 (=> (not res!645133) (not e!543388))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!963745 (= res!645133 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!28991 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!28991 _keys!1686))))))

(declare-fun b!963746 () Bool)

(declare-fun res!645138 () Bool)

(assert (=> b!963746 (=> (not res!645138) (not e!543388))))

(assert (=> b!963746 (= res!645138 (bvsgt from!2084 newFrom!159))))

(declare-fun b!963747 () Bool)

(declare-fun res!645139 () Bool)

(assert (=> b!963747 (=> (not res!645139) (not e!543388))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!963747 (= res!645139 (validKeyInArray!0 (select (arr!28511 _keys!1686) i!803)))))

(declare-fun b!963748 () Bool)

(assert (=> b!963748 (= e!543384 tp_is_empty!21609)))

(assert (= (and start!82702 res!645135) b!963741))

(assert (= (and b!963741 res!645136) b!963744))

(assert (= (and b!963744 res!645137) b!963738))

(assert (= (and b!963738 res!645140) b!963745))

(assert (= (and b!963745 res!645133) b!963747))

(assert (= (and b!963747 res!645139) b!963743))

(assert (= (and b!963743 res!645134) b!963746))

(assert (= (and b!963746 res!645138) b!963742))

(assert (= (and b!963740 condMapEmpty!34408) mapIsEmpty!34408))

(assert (= (and b!963740 (not condMapEmpty!34408)) mapNonEmpty!34408))

(get-info :version)

(assert (= (and mapNonEmpty!34408 ((_ is ValueCellFull!10323) mapValue!34408)) b!963739))

(assert (= (and b!963740 ((_ is ValueCellFull!10323) mapDefault!34408)) b!963748))

(assert (= start!82702 b!963740))

(declare-fun m!893169 () Bool)

(assert (=> start!82702 m!893169))

(declare-fun m!893171 () Bool)

(assert (=> start!82702 m!893171))

(declare-fun m!893173 () Bool)

(assert (=> start!82702 m!893173))

(declare-fun m!893175 () Bool)

(assert (=> b!963738 m!893175))

(declare-fun m!893177 () Bool)

(assert (=> b!963743 m!893177))

(declare-fun m!893179 () Bool)

(assert (=> b!963743 m!893179))

(assert (=> b!963743 m!893177))

(assert (=> b!963743 m!893179))

(declare-fun m!893181 () Bool)

(assert (=> b!963743 m!893181))

(declare-fun m!893183 () Bool)

(assert (=> mapNonEmpty!34408 m!893183))

(declare-fun m!893185 () Bool)

(assert (=> b!963742 m!893185))

(assert (=> b!963742 m!893179))

(assert (=> b!963742 m!893185))

(assert (=> b!963742 m!893179))

(declare-fun m!893187 () Bool)

(assert (=> b!963742 m!893187))

(declare-fun m!893189 () Bool)

(assert (=> b!963742 m!893189))

(declare-fun m!893191 () Bool)

(assert (=> b!963744 m!893191))

(assert (=> b!963747 m!893179))

(assert (=> b!963747 m!893179))

(declare-fun m!893193 () Bool)

(assert (=> b!963747 m!893193))

(check-sat (not mapNonEmpty!34408) tp_is_empty!21609 (not b!963738) (not start!82702) (not b!963742) (not b!963743) (not b!963744) b_and!30313 (not b!963747) (not b_next!18807))
(check-sat b_and!30313 (not b_next!18807))
