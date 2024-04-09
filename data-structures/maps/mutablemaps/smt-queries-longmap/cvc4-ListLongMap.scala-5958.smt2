; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77606 () Bool)

(assert start!77606)

(declare-fun b_free!16163 () Bool)

(declare-fun b_next!16163 () Bool)

(assert (=> start!77606 (= b_free!16163 (not b_next!16163))))

(declare-fun tp!56752 () Bool)

(declare-fun b_and!26547 () Bool)

(assert (=> start!77606 (= tp!56752 b_and!26547)))

(declare-fun res!609921 () Bool)

(declare-fun e!506476 () Bool)

(assert (=> start!77606 (=> (not res!609921) (not e!506476))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77606 (= res!609921 (validMask!0 mask!1756))))

(assert (=> start!77606 e!506476))

(declare-datatypes ((V!29739 0))(
  ( (V!29740 (val!9341 Int)) )
))
(declare-datatypes ((ValueCell!8809 0))(
  ( (ValueCellFull!8809 (v!11846 V!29739)) (EmptyCell!8809) )
))
(declare-datatypes ((array!53194 0))(
  ( (array!53195 (arr!25552 (Array (_ BitVec 32) ValueCell!8809)) (size!26012 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53194)

(declare-fun e!506473 () Bool)

(declare-fun array_inv!19998 (array!53194) Bool)

(assert (=> start!77606 (and (array_inv!19998 _values!1152) e!506473)))

(assert (=> start!77606 tp!56752))

(assert (=> start!77606 true))

(declare-fun tp_is_empty!18581 () Bool)

(assert (=> start!77606 tp_is_empty!18581))

(declare-datatypes ((array!53196 0))(
  ( (array!53197 (arr!25553 (Array (_ BitVec 32) (_ BitVec 64))) (size!26013 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53196)

(declare-fun array_inv!19999 (array!53196) Bool)

(assert (=> start!77606 (array_inv!19999 _keys!1386)))

(declare-fun b!903825 () Bool)

(declare-fun e!506475 () Bool)

(assert (=> b!903825 (= e!506476 (not e!506475))))

(declare-fun res!609918 () Bool)

(assert (=> b!903825 (=> res!609918 e!506475)))

(declare-fun i!717 () (_ BitVec 32))

(assert (=> b!903825 (= res!609918 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26013 _keys!1386))))))

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!53196 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!903825 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!29739)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29739)

(declare-datatypes ((Unit!30621 0))(
  ( (Unit!30622) )
))
(declare-fun lt!408064 () Unit!30621)

(declare-fun lemmaKeyInListMapIsInArray!173 (array!53196 array!53194 (_ BitVec 32) (_ BitVec 32) V!29739 V!29739 (_ BitVec 64) Int) Unit!30621)

(assert (=> b!903825 (= lt!408064 (lemmaKeyInListMapIsInArray!173 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun b!903826 () Bool)

(declare-fun e!506474 () Bool)

(assert (=> b!903826 (= e!506474 true)))

(declare-fun lt!408065 () V!29739)

(declare-datatypes ((tuple2!12148 0))(
  ( (tuple2!12149 (_1!6084 (_ BitVec 64)) (_2!6084 V!29739)) )
))
(declare-datatypes ((List!18023 0))(
  ( (Nil!18020) (Cons!18019 (h!19165 tuple2!12148) (t!25414 List!18023)) )
))
(declare-datatypes ((ListLongMap!10859 0))(
  ( (ListLongMap!10860 (toList!5445 List!18023)) )
))
(declare-fun lt!408063 () ListLongMap!10859)

(declare-fun apply!428 (ListLongMap!10859 (_ BitVec 64)) V!29739)

(assert (=> b!903826 (= lt!408065 (apply!428 lt!408063 k!1033))))

(declare-fun b!903827 () Bool)

(declare-fun res!609916 () Bool)

(assert (=> b!903827 (=> (not res!609916) (not e!506476))))

(declare-datatypes ((List!18024 0))(
  ( (Nil!18021) (Cons!18020 (h!19166 (_ BitVec 64)) (t!25415 List!18024)) )
))
(declare-fun arrayNoDuplicates!0 (array!53196 (_ BitVec 32) List!18024) Bool)

(assert (=> b!903827 (= res!609916 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18021))))

(declare-fun b!903828 () Bool)

(declare-fun res!609917 () Bool)

(assert (=> b!903828 (=> (not res!609917) (not e!506476))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!903828 (= res!609917 (inRange!0 i!717 mask!1756))))

(declare-fun mapNonEmpty!29584 () Bool)

(declare-fun mapRes!29584 () Bool)

(declare-fun tp!56751 () Bool)

(declare-fun e!506471 () Bool)

(assert (=> mapNonEmpty!29584 (= mapRes!29584 (and tp!56751 e!506471))))

(declare-fun mapRest!29584 () (Array (_ BitVec 32) ValueCell!8809))

(declare-fun mapKey!29584 () (_ BitVec 32))

(declare-fun mapValue!29584 () ValueCell!8809)

(assert (=> mapNonEmpty!29584 (= (arr!25552 _values!1152) (store mapRest!29584 mapKey!29584 mapValue!29584))))

(declare-fun b!903829 () Bool)

(declare-fun e!506477 () Bool)

(assert (=> b!903829 (= e!506477 tp_is_empty!18581)))

(declare-fun b!903830 () Bool)

(declare-fun res!609923 () Bool)

(assert (=> b!903830 (=> (not res!609923) (not e!506476))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53196 (_ BitVec 32)) Bool)

(assert (=> b!903830 (= res!609923 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun mapIsEmpty!29584 () Bool)

(assert (=> mapIsEmpty!29584 mapRes!29584))

(declare-fun b!903831 () Bool)

(assert (=> b!903831 (= e!506471 tp_is_empty!18581)))

(declare-fun b!903832 () Bool)

(declare-fun res!609922 () Bool)

(assert (=> b!903832 (=> (not res!609922) (not e!506476))))

(declare-fun contains!4458 (ListLongMap!10859 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2682 (array!53196 array!53194 (_ BitVec 32) (_ BitVec 32) V!29739 V!29739 (_ BitVec 32) Int) ListLongMap!10859)

(assert (=> b!903832 (= res!609922 (contains!4458 (getCurrentListMap!2682 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!903833 () Bool)

(declare-fun res!609920 () Bool)

(assert (=> b!903833 (=> (not res!609920) (not e!506476))))

(assert (=> b!903833 (= res!609920 (and (= (size!26012 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26013 _keys!1386) (size!26012 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!903834 () Bool)

(assert (=> b!903834 (= e!506473 (and e!506477 mapRes!29584))))

(declare-fun condMapEmpty!29584 () Bool)

(declare-fun mapDefault!29584 () ValueCell!8809)

