; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82228 () Bool)

(assert start!82228)

(declare-fun b_free!18473 () Bool)

(declare-fun b_next!18473 () Bool)

(assert (=> start!82228 (= b_free!18473 (not b_next!18473))))

(declare-fun tp!64381 () Bool)

(declare-fun b_and!29979 () Bool)

(assert (=> start!82228 (= tp!64381 b_and!29979)))

(declare-fun mapNonEmpty!33748 () Bool)

(declare-fun mapRes!33748 () Bool)

(declare-fun tp!64380 () Bool)

(declare-fun e!540064 () Bool)

(assert (=> mapNonEmpty!33748 (= mapRes!33748 (and tp!64380 e!540064))))

(declare-fun mapKey!33748 () (_ BitVec 32))

(declare-datatypes ((V!33221 0))(
  ( (V!33222 (val!10640 Int)) )
))
(declare-datatypes ((ValueCell!10108 0))(
  ( (ValueCellFull!10108 (v!13197 V!33221)) (EmptyCell!10108) )
))
(declare-datatypes ((array!58475 0))(
  ( (array!58476 (arr!28107 (Array (_ BitVec 32) ValueCell!10108)) (size!28587 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58475)

(declare-fun mapValue!33748 () ValueCell!10108)

(declare-fun mapRest!33748 () (Array (_ BitVec 32) ValueCell!10108))

(assert (=> mapNonEmpty!33748 (= (arr!28107 _values!1386) (store mapRest!33748 mapKey!33748 mapValue!33748))))

(declare-fun b!957914 () Bool)

(declare-fun e!540066 () Bool)

(assert (=> b!957914 (= e!540066 false)))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun minValue!1328 () V!33221)

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-datatypes ((array!58477 0))(
  ( (array!58478 (arr!28108 (Array (_ BitVec 32) (_ BitVec 64))) (size!28588 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58477)

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33221)

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(declare-fun lt!430346 () Bool)

(declare-datatypes ((tuple2!13802 0))(
  ( (tuple2!13803 (_1!6911 (_ BitVec 64)) (_2!6911 V!33221)) )
))
(declare-datatypes ((List!19670 0))(
  ( (Nil!19667) (Cons!19666 (h!20828 tuple2!13802) (t!28041 List!19670)) )
))
(declare-datatypes ((ListLongMap!12513 0))(
  ( (ListLongMap!12514 (toList!6272 List!19670)) )
))
(declare-fun contains!5325 (ListLongMap!12513 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3457 (array!58477 array!58475 (_ BitVec 32) (_ BitVec 32) V!33221 V!33221 (_ BitVec 32) Int) ListLongMap!12513)

(assert (=> b!957914 (= lt!430346 (contains!5325 (getCurrentListMap!3457 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28108 _keys!1668) i!793)))))

(declare-fun b!957915 () Bool)

(declare-fun res!641311 () Bool)

(assert (=> b!957915 (=> (not res!641311) (not e!540066))))

(assert (=> b!957915 (= res!641311 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28588 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28588 _keys!1668))))))

(declare-fun b!957916 () Bool)

(declare-fun res!641313 () Bool)

(assert (=> b!957916 (=> (not res!641313) (not e!540066))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!957916 (= res!641313 (validKeyInArray!0 (select (arr!28108 _keys!1668) i!793)))))

(declare-fun b!957918 () Bool)

(declare-fun res!641310 () Bool)

(assert (=> b!957918 (=> (not res!641310) (not e!540066))))

(declare-datatypes ((List!19671 0))(
  ( (Nil!19668) (Cons!19667 (h!20829 (_ BitVec 64)) (t!28042 List!19671)) )
))
(declare-fun arrayNoDuplicates!0 (array!58477 (_ BitVec 32) List!19671) Bool)

(assert (=> b!957918 (= res!641310 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19668))))

(declare-fun b!957919 () Bool)

(declare-fun res!641308 () Bool)

(assert (=> b!957919 (=> (not res!641308) (not e!540066))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58477 (_ BitVec 32)) Bool)

(assert (=> b!957919 (= res!641308 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!957920 () Bool)

(declare-fun tp_is_empty!21179 () Bool)

(assert (=> b!957920 (= e!540064 tp_is_empty!21179)))

(declare-fun b!957921 () Bool)

(declare-fun e!540067 () Bool)

(assert (=> b!957921 (= e!540067 tp_is_empty!21179)))

(declare-fun mapIsEmpty!33748 () Bool)

(assert (=> mapIsEmpty!33748 mapRes!33748))

(declare-fun b!957922 () Bool)

(declare-fun res!641309 () Bool)

(assert (=> b!957922 (=> (not res!641309) (not e!540066))))

(assert (=> b!957922 (= res!641309 (and (= (size!28587 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28588 _keys!1668) (size!28587 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun res!641312 () Bool)

(assert (=> start!82228 (=> (not res!641312) (not e!540066))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82228 (= res!641312 (validMask!0 mask!2088))))

(assert (=> start!82228 e!540066))

(assert (=> start!82228 true))

(assert (=> start!82228 tp_is_empty!21179))

(declare-fun array_inv!21745 (array!58477) Bool)

(assert (=> start!82228 (array_inv!21745 _keys!1668)))

(declare-fun e!540065 () Bool)

(declare-fun array_inv!21746 (array!58475) Bool)

(assert (=> start!82228 (and (array_inv!21746 _values!1386) e!540065)))

(assert (=> start!82228 tp!64381))

(declare-fun b!957917 () Bool)

(assert (=> b!957917 (= e!540065 (and e!540067 mapRes!33748))))

(declare-fun condMapEmpty!33748 () Bool)

(declare-fun mapDefault!33748 () ValueCell!10108)

