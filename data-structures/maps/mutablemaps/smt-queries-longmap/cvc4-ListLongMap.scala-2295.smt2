; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37244 () Bool)

(assert start!37244)

(declare-fun b_free!8363 () Bool)

(declare-fun b_next!8363 () Bool)

(assert (=> start!37244 (= b_free!8363 (not b_next!8363))))

(declare-fun tp!29804 () Bool)

(declare-fun b_and!15623 () Bool)

(assert (=> start!37244 (= tp!29804 b_and!15623)))

(declare-fun b!376416 () Bool)

(declare-fun res!212843 () Bool)

(declare-fun e!229249 () Bool)

(assert (=> b!376416 (=> (not res!212843) (not e!229249))))

(declare-datatypes ((array!21921 0))(
  ( (array!21922 (arr!10426 (Array (_ BitVec 32) (_ BitVec 64))) (size!10778 (_ BitVec 32))) )
))
(declare-fun lt!174747 () array!21921)

(declare-datatypes ((List!5905 0))(
  ( (Nil!5902) (Cons!5901 (h!6757 (_ BitVec 64)) (t!11063 List!5905)) )
))
(declare-fun arrayNoDuplicates!0 (array!21921 (_ BitVec 32) List!5905) Bool)

(assert (=> b!376416 (= res!212843 (arrayNoDuplicates!0 lt!174747 #b00000000000000000000000000000000 Nil!5902))))

(declare-fun b!376417 () Bool)

(declare-fun res!212838 () Bool)

(declare-fun e!229244 () Bool)

(assert (=> b!376417 (=> (not res!212838) (not e!229244))))

(declare-fun i!548 () (_ BitVec 32))

(declare-fun _keys!658 () array!21921)

(assert (=> b!376417 (= res!212838 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10778 _keys!658))))))

(declare-fun b!376418 () Bool)

(declare-fun res!212845 () Bool)

(assert (=> b!376418 (=> (not res!212845) (not e!229244))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21921 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!376418 (= res!212845 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!376419 () Bool)

(declare-fun e!229250 () Bool)

(assert (=> b!376419 (= e!229250 true)))

(declare-datatypes ((V!13119 0))(
  ( (V!13120 (val!4550 Int)) )
))
(declare-datatypes ((tuple2!6034 0))(
  ( (tuple2!6035 (_1!3027 (_ BitVec 64)) (_2!3027 V!13119)) )
))
(declare-datatypes ((List!5906 0))(
  ( (Nil!5903) (Cons!5902 (h!6758 tuple2!6034) (t!11064 List!5906)) )
))
(declare-datatypes ((ListLongMap!4961 0))(
  ( (ListLongMap!4962 (toList!2496 List!5906)) )
))
(declare-fun lt!174749 () ListLongMap!4961)

(declare-fun lt!174751 () ListLongMap!4961)

(declare-fun lt!174741 () tuple2!6034)

(declare-fun +!837 (ListLongMap!4961 tuple2!6034) ListLongMap!4961)

(assert (=> b!376419 (= lt!174749 (+!837 lt!174751 lt!174741))))

(declare-fun v!373 () V!13119)

(declare-fun lt!174739 () ListLongMap!4961)

(declare-fun zeroValue!472 () V!13119)

(declare-datatypes ((Unit!11577 0))(
  ( (Unit!11578) )
))
(declare-fun lt!174748 () Unit!11577)

(declare-fun addCommutativeForDiffKeys!261 (ListLongMap!4961 (_ BitVec 64) V!13119 (_ BitVec 64) V!13119) Unit!11577)

(assert (=> b!376419 (= lt!174748 (addCommutativeForDiffKeys!261 lt!174739 k!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!376420 () Bool)

(declare-fun res!212848 () Bool)

(assert (=> b!376420 (=> (not res!212848) (not e!229244))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun mask!970 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4162 0))(
  ( (ValueCellFull!4162 (v!6743 V!13119)) (EmptyCell!4162) )
))
(declare-datatypes ((array!21923 0))(
  ( (array!21924 (arr!10427 (Array (_ BitVec 32) ValueCell!4162)) (size!10779 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21923)

(assert (=> b!376420 (= res!212848 (and (= (size!10779 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10778 _keys!658) (size!10779 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!376422 () Bool)

(declare-fun e!229246 () Bool)

(assert (=> b!376422 (= e!229249 (not e!229246))))

(declare-fun res!212840 () Bool)

(assert (=> b!376422 (=> res!212840 e!229246)))

(assert (=> b!376422 (= res!212840 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!174744 () ListLongMap!4961)

(declare-fun defaultEntry!514 () Int)

(declare-fun minValue!472 () V!13119)

(declare-fun getCurrentListMap!1935 (array!21921 array!21923 (_ BitVec 32) (_ BitVec 32) V!13119 V!13119 (_ BitVec 32) Int) ListLongMap!4961)

(assert (=> b!376422 (= lt!174744 (getCurrentListMap!1935 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!174750 () ListLongMap!4961)

(declare-fun lt!174745 () array!21923)

(assert (=> b!376422 (= lt!174750 (getCurrentListMap!1935 lt!174747 lt!174745 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!174746 () ListLongMap!4961)

(declare-fun lt!174740 () ListLongMap!4961)

(assert (=> b!376422 (and (= lt!174746 lt!174740) (= lt!174740 lt!174746))))

(assert (=> b!376422 (= lt!174740 (+!837 lt!174739 lt!174741))))

(assert (=> b!376422 (= lt!174741 (tuple2!6035 k!778 v!373))))

(declare-fun lt!174742 () Unit!11577)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!86 (array!21921 array!21923 (_ BitVec 32) (_ BitVec 32) V!13119 V!13119 (_ BitVec 32) (_ BitVec 64) V!13119 (_ BitVec 32) Int) Unit!11577)

(assert (=> b!376422 (= lt!174742 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!86 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!753 (array!21921 array!21923 (_ BitVec 32) (_ BitVec 32) V!13119 V!13119 (_ BitVec 32) Int) ListLongMap!4961)

(assert (=> b!376422 (= lt!174746 (getCurrentListMapNoExtraKeys!753 lt!174747 lt!174745 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!376422 (= lt!174745 (array!21924 (store (arr!10427 _values!506) i!548 (ValueCellFull!4162 v!373)) (size!10779 _values!506)))))

(assert (=> b!376422 (= lt!174739 (getCurrentListMapNoExtraKeys!753 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!376423 () Bool)

(declare-fun res!212844 () Bool)

(assert (=> b!376423 (=> (not res!212844) (not e!229244))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21921 (_ BitVec 32)) Bool)

(assert (=> b!376423 (= res!212844 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!376424 () Bool)

(declare-fun res!212847 () Bool)

(assert (=> b!376424 (=> (not res!212847) (not e!229244))))

(assert (=> b!376424 (= res!212847 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5902))))

(declare-fun b!376425 () Bool)

(declare-fun res!212846 () Bool)

(assert (=> b!376425 (=> (not res!212846) (not e!229244))))

(assert (=> b!376425 (= res!212846 (or (= (select (arr!10426 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10426 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!15081 () Bool)

(declare-fun mapRes!15081 () Bool)

(declare-fun tp!29805 () Bool)

(declare-fun e!229247 () Bool)

(assert (=> mapNonEmpty!15081 (= mapRes!15081 (and tp!29805 e!229247))))

(declare-fun mapRest!15081 () (Array (_ BitVec 32) ValueCell!4162))

(declare-fun mapKey!15081 () (_ BitVec 32))

(declare-fun mapValue!15081 () ValueCell!4162)

(assert (=> mapNonEmpty!15081 (= (arr!10427 _values!506) (store mapRest!15081 mapKey!15081 mapValue!15081))))

(declare-fun b!376426 () Bool)

(assert (=> b!376426 (= e!229246 e!229250)))

(declare-fun res!212839 () Bool)

(assert (=> b!376426 (=> res!212839 e!229250)))

(assert (=> b!376426 (= res!212839 (= k!778 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!376426 (= lt!174750 lt!174749)))

(declare-fun lt!174743 () tuple2!6034)

(assert (=> b!376426 (= lt!174749 (+!837 lt!174740 lt!174743))))

(assert (=> b!376426 (= lt!174744 lt!174751)))

(assert (=> b!376426 (= lt!174751 (+!837 lt!174739 lt!174743))))

(assert (=> b!376426 (= lt!174750 (+!837 lt!174746 lt!174743))))

(assert (=> b!376426 (= lt!174743 (tuple2!6035 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!376427 () Bool)

(assert (=> b!376427 (= e!229244 e!229249)))

(declare-fun res!212849 () Bool)

(assert (=> b!376427 (=> (not res!212849) (not e!229249))))

(assert (=> b!376427 (= res!212849 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!174747 mask!970))))

(assert (=> b!376427 (= lt!174747 (array!21922 (store (arr!10426 _keys!658) i!548 k!778) (size!10778 _keys!658)))))

(declare-fun b!376428 () Bool)

(declare-fun res!212842 () Bool)

(assert (=> b!376428 (=> (not res!212842) (not e!229244))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!376428 (= res!212842 (validKeyInArray!0 k!778))))

(declare-fun b!376429 () Bool)

(declare-fun e!229251 () Bool)

(declare-fun e!229248 () Bool)

(assert (=> b!376429 (= e!229251 (and e!229248 mapRes!15081))))

(declare-fun condMapEmpty!15081 () Bool)

(declare-fun mapDefault!15081 () ValueCell!4162)

