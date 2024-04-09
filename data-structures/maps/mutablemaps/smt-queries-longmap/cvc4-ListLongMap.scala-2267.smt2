; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37076 () Bool)

(assert start!37076)

(declare-fun b_free!8195 () Bool)

(declare-fun b_next!8195 () Bool)

(assert (=> start!37076 (= b_free!8195 (not b_next!8195))))

(declare-fun tp!29301 () Bool)

(declare-fun b_and!15455 () Bool)

(assert (=> start!37076 (= tp!29301 b_and!15455)))

(declare-fun b!372647 () Bool)

(declare-fun res!209830 () Bool)

(declare-fun e!227257 () Bool)

(assert (=> b!372647 (=> (not res!209830) (not e!227257))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!372647 (= res!209830 (validKeyInArray!0 k!778))))

(declare-fun b!372648 () Bool)

(declare-fun res!209833 () Bool)

(assert (=> b!372648 (=> (not res!209833) (not e!227257))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!12895 0))(
  ( (V!12896 (val!4466 Int)) )
))
(declare-datatypes ((ValueCell!4078 0))(
  ( (ValueCellFull!4078 (v!6659 V!12895)) (EmptyCell!4078) )
))
(declare-datatypes ((array!21593 0))(
  ( (array!21594 (arr!10262 (Array (_ BitVec 32) ValueCell!4078)) (size!10614 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21593)

(declare-datatypes ((array!21595 0))(
  ( (array!21596 (arr!10263 (Array (_ BitVec 32) (_ BitVec 64))) (size!10615 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21595)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!372648 (= res!209833 (and (= (size!10614 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10615 _keys!658) (size!10614 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!372649 () Bool)

(declare-fun res!209834 () Bool)

(assert (=> b!372649 (=> (not res!209834) (not e!227257))))

(declare-fun arrayContainsKey!0 (array!21595 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!372649 (= res!209834 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!372650 () Bool)

(declare-fun e!227259 () Bool)

(declare-fun tp_is_empty!8843 () Bool)

(assert (=> b!372650 (= e!227259 tp_is_empty!8843)))

(declare-fun mapNonEmpty!14829 () Bool)

(declare-fun mapRes!14829 () Bool)

(declare-fun tp!29300 () Bool)

(assert (=> mapNonEmpty!14829 (= mapRes!14829 (and tp!29300 e!227259))))

(declare-fun mapKey!14829 () (_ BitVec 32))

(declare-fun mapValue!14829 () ValueCell!4078)

(declare-fun mapRest!14829 () (Array (_ BitVec 32) ValueCell!4078))

(assert (=> mapNonEmpty!14829 (= (arr!10262 _values!506) (store mapRest!14829 mapKey!14829 mapValue!14829))))

(declare-fun b!372651 () Bool)

(declare-fun e!227258 () Bool)

(assert (=> b!372651 (= e!227258 (not true))))

(declare-fun lt!170930 () array!21593)

(declare-fun defaultEntry!514 () Int)

(declare-fun lt!170933 () array!21595)

(declare-fun zeroValue!472 () V!12895)

(declare-datatypes ((tuple2!5902 0))(
  ( (tuple2!5903 (_1!2961 (_ BitVec 64)) (_2!2961 V!12895)) )
))
(declare-datatypes ((List!5777 0))(
  ( (Nil!5774) (Cons!5773 (h!6629 tuple2!5902) (t!10935 List!5777)) )
))
(declare-datatypes ((ListLongMap!4829 0))(
  ( (ListLongMap!4830 (toList!2430 List!5777)) )
))
(declare-fun lt!170934 () ListLongMap!4829)

(declare-fun minValue!472 () V!12895)

(declare-fun getCurrentListMap!1880 (array!21595 array!21593 (_ BitVec 32) (_ BitVec 32) V!12895 V!12895 (_ BitVec 32) Int) ListLongMap!4829)

(assert (=> b!372651 (= lt!170934 (getCurrentListMap!1880 lt!170933 lt!170930 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!170931 () ListLongMap!4829)

(declare-fun lt!170932 () ListLongMap!4829)

(assert (=> b!372651 (and (= lt!170931 lt!170932) (= lt!170932 lt!170931))))

(declare-fun lt!170929 () ListLongMap!4829)

(declare-fun v!373 () V!12895)

(declare-fun +!771 (ListLongMap!4829 tuple2!5902) ListLongMap!4829)

(assert (=> b!372651 (= lt!170932 (+!771 lt!170929 (tuple2!5903 k!778 v!373)))))

(declare-datatypes ((Unit!11447 0))(
  ( (Unit!11448) )
))
(declare-fun lt!170935 () Unit!11447)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!31 (array!21595 array!21593 (_ BitVec 32) (_ BitVec 32) V!12895 V!12895 (_ BitVec 32) (_ BitVec 64) V!12895 (_ BitVec 32) Int) Unit!11447)

(assert (=> b!372651 (= lt!170935 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!31 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!698 (array!21595 array!21593 (_ BitVec 32) (_ BitVec 32) V!12895 V!12895 (_ BitVec 32) Int) ListLongMap!4829)

(assert (=> b!372651 (= lt!170931 (getCurrentListMapNoExtraKeys!698 lt!170933 lt!170930 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!372651 (= lt!170930 (array!21594 (store (arr!10262 _values!506) i!548 (ValueCellFull!4078 v!373)) (size!10614 _values!506)))))

(assert (=> b!372651 (= lt!170929 (getCurrentListMapNoExtraKeys!698 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!372652 () Bool)

(assert (=> b!372652 (= e!227257 e!227258)))

(declare-fun res!209827 () Bool)

(assert (=> b!372652 (=> (not res!209827) (not e!227258))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21595 (_ BitVec 32)) Bool)

(assert (=> b!372652 (= res!209827 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!170933 mask!970))))

(assert (=> b!372652 (= lt!170933 (array!21596 (store (arr!10263 _keys!658) i!548 k!778) (size!10615 _keys!658)))))

(declare-fun res!209828 () Bool)

(assert (=> start!37076 (=> (not res!209828) (not e!227257))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37076 (= res!209828 (validMask!0 mask!970))))

(assert (=> start!37076 e!227257))

(declare-fun e!227260 () Bool)

(declare-fun array_inv!7580 (array!21593) Bool)

(assert (=> start!37076 (and (array_inv!7580 _values!506) e!227260)))

(assert (=> start!37076 tp!29301))

(assert (=> start!37076 true))

(assert (=> start!37076 tp_is_empty!8843))

(declare-fun array_inv!7581 (array!21595) Bool)

(assert (=> start!37076 (array_inv!7581 _keys!658)))

(declare-fun b!372653 () Bool)

(declare-fun res!209826 () Bool)

(assert (=> b!372653 (=> (not res!209826) (not e!227257))))

(assert (=> b!372653 (= res!209826 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!372654 () Bool)

(declare-fun e!227262 () Bool)

(assert (=> b!372654 (= e!227262 tp_is_empty!8843)))

(declare-fun b!372655 () Bool)

(declare-fun res!209829 () Bool)

(assert (=> b!372655 (=> (not res!209829) (not e!227257))))

(assert (=> b!372655 (= res!209829 (or (= (select (arr!10263 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10263 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!372656 () Bool)

(assert (=> b!372656 (= e!227260 (and e!227262 mapRes!14829))))

(declare-fun condMapEmpty!14829 () Bool)

(declare-fun mapDefault!14829 () ValueCell!4078)

