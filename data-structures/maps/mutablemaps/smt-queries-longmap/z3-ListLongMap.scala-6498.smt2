; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82858 () Bool)

(assert start!82858)

(declare-fun b_free!18957 () Bool)

(declare-fun b_next!18957 () Bool)

(assert (=> start!82858 (= b_free!18957 (not b_next!18957))))

(declare-fun tp!66001 () Bool)

(declare-fun b_and!30463 () Bool)

(assert (=> start!82858 (= tp!66001 b_and!30463)))

(declare-fun mapNonEmpty!34642 () Bool)

(declare-fun mapRes!34642 () Bool)

(declare-fun tp!66000 () Bool)

(declare-fun e!544638 () Bool)

(assert (=> mapNonEmpty!34642 (= mapRes!34642 (and tp!66000 e!544638))))

(declare-datatypes ((V!34003 0))(
  ( (V!34004 (val!10933 Int)) )
))
(declare-datatypes ((ValueCell!10401 0))(
  ( (ValueCellFull!10401 (v!13491 V!34003)) (EmptyCell!10401) )
))
(declare-fun mapRest!34642 () (Array (_ BitVec 32) ValueCell!10401))

(declare-datatypes ((array!59593 0))(
  ( (array!59594 (arr!28661 (Array (_ BitVec 32) ValueCell!10401)) (size!29141 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59593)

(declare-fun mapKey!34642 () (_ BitVec 32))

(declare-fun mapValue!34642 () ValueCell!10401)

(assert (=> mapNonEmpty!34642 (= (arr!28661 _values!1400) (store mapRest!34642 mapKey!34642 mapValue!34642))))

(declare-fun b!966086 () Bool)

(declare-fun e!544636 () Bool)

(declare-fun tp_is_empty!21765 () Bool)

(assert (=> b!966086 (= e!544636 tp_is_empty!21765)))

(declare-fun b!966087 () Bool)

(declare-fun e!544635 () Bool)

(assert (=> b!966087 (= e!544635 false)))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((array!59595 0))(
  ( (array!59596 (arr!28662 (Array (_ BitVec 32) (_ BitVec 64))) (size!29142 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59595)

(declare-fun minValue!1342 () V!34003)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun lt!431256 () Bool)

(declare-fun zeroValue!1342 () V!34003)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14140 0))(
  ( (tuple2!14141 (_1!7080 (_ BitVec 64)) (_2!7080 V!34003)) )
))
(declare-datatypes ((List!20017 0))(
  ( (Nil!20014) (Cons!20013 (h!21175 tuple2!14140) (t!28388 List!20017)) )
))
(declare-datatypes ((ListLongMap!12851 0))(
  ( (ListLongMap!12852 (toList!6441 List!20017)) )
))
(declare-fun contains!5492 (ListLongMap!12851 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3626 (array!59595 array!59593 (_ BitVec 32) (_ BitVec 32) V!34003 V!34003 (_ BitVec 32) Int) ListLongMap!12851)

(assert (=> b!966087 (= lt!431256 (contains!5492 (getCurrentListMap!3626 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28662 _keys!1686) i!803)))))

(declare-fun res!646782 () Bool)

(assert (=> start!82858 (=> (not res!646782) (not e!544635))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82858 (= res!646782 (validMask!0 mask!2110))))

(assert (=> start!82858 e!544635))

(assert (=> start!82858 true))

(declare-fun e!544637 () Bool)

(declare-fun array_inv!22099 (array!59593) Bool)

(assert (=> start!82858 (and (array_inv!22099 _values!1400) e!544637)))

(declare-fun array_inv!22100 (array!59595) Bool)

(assert (=> start!82858 (array_inv!22100 _keys!1686)))

(assert (=> start!82858 tp!66001))

(assert (=> start!82858 tp_is_empty!21765))

(declare-fun b!966088 () Bool)

(declare-fun res!646784 () Bool)

(assert (=> b!966088 (=> (not res!646784) (not e!544635))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!966088 (= res!646784 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29142 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29142 _keys!1686))))))

(declare-fun mapIsEmpty!34642 () Bool)

(assert (=> mapIsEmpty!34642 mapRes!34642))

(declare-fun b!966089 () Bool)

(assert (=> b!966089 (= e!544638 tp_is_empty!21765)))

(declare-fun b!966090 () Bool)

(declare-fun res!646781 () Bool)

(assert (=> b!966090 (=> (not res!646781) (not e!544635))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!966090 (= res!646781 (validKeyInArray!0 (select (arr!28662 _keys!1686) i!803)))))

(declare-fun b!966091 () Bool)

(declare-fun res!646783 () Bool)

(assert (=> b!966091 (=> (not res!646783) (not e!544635))))

(declare-datatypes ((List!20018 0))(
  ( (Nil!20015) (Cons!20014 (h!21176 (_ BitVec 64)) (t!28389 List!20018)) )
))
(declare-fun arrayNoDuplicates!0 (array!59595 (_ BitVec 32) List!20018) Bool)

(assert (=> b!966091 (= res!646783 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!20015))))

(declare-fun b!966092 () Bool)

(declare-fun res!646779 () Bool)

(assert (=> b!966092 (=> (not res!646779) (not e!544635))))

(assert (=> b!966092 (= res!646779 (and (= (size!29141 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29142 _keys!1686) (size!29141 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!966093 () Bool)

(assert (=> b!966093 (= e!544637 (and e!544636 mapRes!34642))))

(declare-fun condMapEmpty!34642 () Bool)

(declare-fun mapDefault!34642 () ValueCell!10401)

(assert (=> b!966093 (= condMapEmpty!34642 (= (arr!28661 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10401)) mapDefault!34642)))))

(declare-fun b!966094 () Bool)

(declare-fun res!646780 () Bool)

(assert (=> b!966094 (=> (not res!646780) (not e!544635))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59595 (_ BitVec 32)) Bool)

(assert (=> b!966094 (= res!646780 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(assert (= (and start!82858 res!646782) b!966092))

(assert (= (and b!966092 res!646779) b!966094))

(assert (= (and b!966094 res!646780) b!966091))

(assert (= (and b!966091 res!646783) b!966088))

(assert (= (and b!966088 res!646784) b!966090))

(assert (= (and b!966090 res!646781) b!966087))

(assert (= (and b!966093 condMapEmpty!34642) mapIsEmpty!34642))

(assert (= (and b!966093 (not condMapEmpty!34642)) mapNonEmpty!34642))

(get-info :version)

(assert (= (and mapNonEmpty!34642 ((_ is ValueCellFull!10401) mapValue!34642)) b!966089))

(assert (= (and b!966093 ((_ is ValueCellFull!10401) mapDefault!34642)) b!966086))

(assert (= start!82858 b!966093))

(declare-fun m!895035 () Bool)

(assert (=> mapNonEmpty!34642 m!895035))

(declare-fun m!895037 () Bool)

(assert (=> b!966087 m!895037))

(declare-fun m!895039 () Bool)

(assert (=> b!966087 m!895039))

(assert (=> b!966087 m!895037))

(assert (=> b!966087 m!895039))

(declare-fun m!895041 () Bool)

(assert (=> b!966087 m!895041))

(declare-fun m!895043 () Bool)

(assert (=> b!966091 m!895043))

(declare-fun m!895045 () Bool)

(assert (=> b!966094 m!895045))

(declare-fun m!895047 () Bool)

(assert (=> start!82858 m!895047))

(declare-fun m!895049 () Bool)

(assert (=> start!82858 m!895049))

(declare-fun m!895051 () Bool)

(assert (=> start!82858 m!895051))

(assert (=> b!966090 m!895039))

(assert (=> b!966090 m!895039))

(declare-fun m!895053 () Bool)

(assert (=> b!966090 m!895053))

(check-sat (not b_next!18957) (not start!82858) (not b!966091) (not b!966087) (not b!966090) tp_is_empty!21765 (not mapNonEmpty!34642) (not b!966094) b_and!30463)
(check-sat b_and!30463 (not b_next!18957))
