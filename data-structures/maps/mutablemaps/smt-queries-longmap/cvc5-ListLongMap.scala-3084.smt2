; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43404 () Bool)

(assert start!43404)

(declare-fun b_free!12223 () Bool)

(declare-fun b_next!12223 () Bool)

(assert (=> start!43404 (= b_free!12223 (not b_next!12223))))

(declare-fun tp!42945 () Bool)

(declare-fun b_and!20997 () Bool)

(assert (=> start!43404 (= tp!42945 b_and!20997)))

(declare-fun b!480696 () Bool)

(declare-fun res!286718 () Bool)

(declare-fun e!282836 () Bool)

(assert (=> b!480696 (=> (not res!286718) (not e!282836))))

(declare-fun k!1332 () (_ BitVec 64))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-datatypes ((V!19385 0))(
  ( (V!19386 (val!6915 Int)) )
))
(declare-fun minValue!1458 () V!19385)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-fun zeroValue!1458 () V!19385)

(declare-datatypes ((ValueCell!6506 0))(
  ( (ValueCellFull!6506 (v!9202 V!19385)) (EmptyCell!6506) )
))
(declare-datatypes ((array!31105 0))(
  ( (array!31106 (arr!14954 (Array (_ BitVec 32) ValueCell!6506)) (size!15312 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31105)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((array!31107 0))(
  ( (array!31108 (arr!14955 (Array (_ BitVec 32) (_ BitVec 64))) (size!15313 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31107)

(declare-datatypes ((tuple2!9072 0))(
  ( (tuple2!9073 (_1!4546 (_ BitVec 64)) (_2!4546 V!19385)) )
))
(declare-datatypes ((List!9187 0))(
  ( (Nil!9184) (Cons!9183 (h!10039 tuple2!9072) (t!15405 List!9187)) )
))
(declare-datatypes ((ListLongMap!7999 0))(
  ( (ListLongMap!8000 (toList!4015 List!9187)) )
))
(declare-fun contains!2624 (ListLongMap!7999 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2307 (array!31107 array!31105 (_ BitVec 32) (_ BitVec 32) V!19385 V!19385 (_ BitVec 32) Int) ListLongMap!7999)

(assert (=> b!480696 (= res!286718 (contains!2624 (getCurrentListMap!2307 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k!1332))))

(declare-fun b!480697 () Bool)

(declare-fun res!286717 () Bool)

(assert (=> b!480697 (=> (not res!286717) (not e!282836))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!480697 (= res!286717 (validKeyInArray!0 k!1332))))

(declare-fun b!480698 () Bool)

(declare-fun res!286720 () Bool)

(assert (=> b!480698 (=> (not res!286720) (not e!282836))))

(declare-datatypes ((List!9188 0))(
  ( (Nil!9185) (Cons!9184 (h!10040 (_ BitVec 64)) (t!15406 List!9188)) )
))
(declare-fun arrayNoDuplicates!0 (array!31107 (_ BitVec 32) List!9188) Bool)

(assert (=> b!480698 (= res!286720 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9185))))

(declare-fun b!480699 () Bool)

(declare-fun res!286721 () Bool)

(assert (=> b!480699 (=> (not res!286721) (not e!282836))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31107 (_ BitVec 32)) Bool)

(assert (=> b!480699 (= res!286721 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!480700 () Bool)

(declare-fun e!282837 () Bool)

(declare-fun tp_is_empty!13735 () Bool)

(assert (=> b!480700 (= e!282837 tp_is_empty!13735)))

(declare-fun res!286722 () Bool)

(assert (=> start!43404 (=> (not res!286722) (not e!282836))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43404 (= res!286722 (validMask!0 mask!2352))))

(assert (=> start!43404 e!282836))

(assert (=> start!43404 true))

(assert (=> start!43404 tp_is_empty!13735))

(declare-fun e!282835 () Bool)

(declare-fun array_inv!10770 (array!31105) Bool)

(assert (=> start!43404 (and (array_inv!10770 _values!1516) e!282835)))

(assert (=> start!43404 tp!42945))

(declare-fun array_inv!10771 (array!31107) Bool)

(assert (=> start!43404 (array_inv!10771 _keys!1874)))

(declare-fun b!480701 () Bool)

(declare-fun e!282833 () Bool)

(declare-fun arrayContainsKey!0 (array!31107 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!480701 (= e!282833 (arrayContainsKey!0 _keys!1874 k!1332 #b00000000000000000000000000000000))))

(declare-fun b!480702 () Bool)

(assert (=> b!480702 (= e!282833 (ite (= k!1332 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!480703 () Bool)

(declare-fun e!282834 () Bool)

(declare-fun mapRes!22306 () Bool)

(assert (=> b!480703 (= e!282835 (and e!282834 mapRes!22306))))

(declare-fun condMapEmpty!22306 () Bool)

(declare-fun mapDefault!22306 () ValueCell!6506)

