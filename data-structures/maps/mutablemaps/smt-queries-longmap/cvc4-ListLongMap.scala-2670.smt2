; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39850 () Bool)

(assert start!39850)

(declare-fun b_free!10109 () Bool)

(declare-fun b_next!10109 () Bool)

(assert (=> start!39850 (= b_free!10109 (not b_next!10109))))

(declare-fun tp!35856 () Bool)

(declare-fun b_and!17895 () Bool)

(assert (=> start!39850 (= tp!35856 b_and!17895)))

(declare-fun b!430385 () Bool)

(declare-fun res!252989 () Bool)

(declare-fun e!254790 () Bool)

(assert (=> b!430385 (=> (not res!252989) (not e!254790))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!430385 (= res!252989 (validMask!0 mask!1025))))

(declare-fun b!430387 () Bool)

(declare-fun e!254791 () Bool)

(assert (=> b!430387 (= e!254791 true)))

(declare-datatypes ((V!16119 0))(
  ( (V!16120 (val!5675 Int)) )
))
(declare-datatypes ((tuple2!7410 0))(
  ( (tuple2!7411 (_1!3715 (_ BitVec 64)) (_2!3715 V!16119)) )
))
(declare-datatypes ((List!7463 0))(
  ( (Nil!7460) (Cons!7459 (h!8315 tuple2!7410) (t!13029 List!7463)) )
))
(declare-datatypes ((ListLongMap!6337 0))(
  ( (ListLongMap!6338 (toList!3184 List!7463)) )
))
(declare-fun lt!196926 () ListLongMap!6337)

(declare-fun lt!196931 () tuple2!7410)

(declare-fun lt!196927 () tuple2!7410)

(declare-fun lt!196921 () ListLongMap!6337)

(declare-fun +!1332 (ListLongMap!6337 tuple2!7410) ListLongMap!6337)

(assert (=> b!430387 (= lt!196926 (+!1332 (+!1332 lt!196921 lt!196927) lt!196931))))

(declare-fun k!794 () (_ BitVec 64))

(declare-datatypes ((Unit!12634 0))(
  ( (Unit!12635) )
))
(declare-fun lt!196924 () Unit!12634)

(declare-fun v!412 () V!16119)

(declare-datatypes ((array!26335 0))(
  ( (array!26336 (arr!12614 (Array (_ BitVec 32) (_ BitVec 64))) (size!12966 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26335)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lt!196919 () V!16119)

(declare-fun addCommutativeForDiffKeys!351 (ListLongMap!6337 (_ BitVec 64) V!16119 (_ BitVec 64) V!16119) Unit!12634)

(assert (=> b!430387 (= lt!196924 (addCommutativeForDiffKeys!351 lt!196921 k!794 v!412 (select (arr!12614 _keys!709) from!863) lt!196919))))

(declare-fun b!430388 () Bool)

(declare-fun res!252980 () Bool)

(assert (=> b!430388 (=> (not res!252980) (not e!254790))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!430388 (= res!252980 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12966 _keys!709))))))

(declare-fun b!430389 () Bool)

(declare-fun res!252976 () Bool)

(assert (=> b!430389 (=> (not res!252976) (not e!254790))))

(assert (=> b!430389 (= res!252976 (or (= (select (arr!12614 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12614 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!18513 () Bool)

(declare-fun mapRes!18513 () Bool)

(declare-fun tp!35855 () Bool)

(declare-fun e!254793 () Bool)

(assert (=> mapNonEmpty!18513 (= mapRes!18513 (and tp!35855 e!254793))))

(declare-datatypes ((ValueCell!5287 0))(
  ( (ValueCellFull!5287 (v!7918 V!16119)) (EmptyCell!5287) )
))
(declare-fun mapValue!18513 () ValueCell!5287)

(declare-datatypes ((array!26337 0))(
  ( (array!26338 (arr!12615 (Array (_ BitVec 32) ValueCell!5287)) (size!12967 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26337)

(declare-fun mapRest!18513 () (Array (_ BitVec 32) ValueCell!5287))

(declare-fun mapKey!18513 () (_ BitVec 32))

(assert (=> mapNonEmpty!18513 (= (arr!12615 _values!549) (store mapRest!18513 mapKey!18513 mapValue!18513))))

(declare-fun b!430390 () Bool)

(declare-fun res!252978 () Bool)

(assert (=> b!430390 (=> (not res!252978) (not e!254790))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26335 (_ BitVec 32)) Bool)

(assert (=> b!430390 (= res!252978 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!430391 () Bool)

(declare-fun res!252977 () Bool)

(assert (=> b!430391 (=> (not res!252977) (not e!254790))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!430391 (= res!252977 (and (= (size!12967 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12966 _keys!709) (size!12967 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!430386 () Bool)

(declare-fun res!252984 () Bool)

(assert (=> b!430386 (=> (not res!252984) (not e!254790))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!430386 (= res!252984 (validKeyInArray!0 k!794))))

(declare-fun res!252986 () Bool)

(assert (=> start!39850 (=> (not res!252986) (not e!254790))))

(assert (=> start!39850 (= res!252986 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12966 _keys!709))))))

(assert (=> start!39850 e!254790))

(declare-fun tp_is_empty!11261 () Bool)

(assert (=> start!39850 tp_is_empty!11261))

(assert (=> start!39850 tp!35856))

(assert (=> start!39850 true))

(declare-fun e!254794 () Bool)

(declare-fun array_inv!9176 (array!26337) Bool)

(assert (=> start!39850 (and (array_inv!9176 _values!549) e!254794)))

(declare-fun array_inv!9177 (array!26335) Bool)

(assert (=> start!39850 (array_inv!9177 _keys!709)))

(declare-fun b!430392 () Bool)

(declare-fun e!254785 () Unit!12634)

(declare-fun Unit!12636 () Unit!12634)

(assert (=> b!430392 (= e!254785 Unit!12636)))

(declare-fun lt!196932 () Unit!12634)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26335 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12634)

(assert (=> b!430392 (= lt!196932 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!430392 false))

(declare-fun b!430393 () Bool)

(declare-fun e!254788 () Bool)

(declare-fun e!254792 () Bool)

(assert (=> b!430393 (= e!254788 e!254792)))

(declare-fun res!252981 () Bool)

(assert (=> b!430393 (=> (not res!252981) (not e!254792))))

(assert (=> b!430393 (= res!252981 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!16119)

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!196929 () ListLongMap!6337)

(declare-fun lt!196922 () array!26337)

(declare-fun zeroValue!515 () V!16119)

(declare-fun lt!196930 () array!26335)

(declare-fun getCurrentListMapNoExtraKeys!1380 (array!26335 array!26337 (_ BitVec 32) (_ BitVec 32) V!16119 V!16119 (_ BitVec 32) Int) ListLongMap!6337)

(assert (=> b!430393 (= lt!196929 (getCurrentListMapNoExtraKeys!1380 lt!196930 lt!196922 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!430393 (= lt!196922 (array!26338 (store (arr!12615 _values!549) i!563 (ValueCellFull!5287 v!412)) (size!12967 _values!549)))))

(declare-fun lt!196920 () ListLongMap!6337)

(assert (=> b!430393 (= lt!196920 (getCurrentListMapNoExtraKeys!1380 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!430394 () Bool)

(assert (=> b!430394 (= e!254793 tp_is_empty!11261)))

(declare-fun b!430395 () Bool)

(declare-fun res!252990 () Bool)

(assert (=> b!430395 (=> (not res!252990) (not e!254790))))

(declare-datatypes ((List!7464 0))(
  ( (Nil!7461) (Cons!7460 (h!8316 (_ BitVec 64)) (t!13030 List!7464)) )
))
(declare-fun arrayNoDuplicates!0 (array!26335 (_ BitVec 32) List!7464) Bool)

(assert (=> b!430395 (= res!252990 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7461))))

(declare-fun b!430396 () Bool)

(declare-fun e!254787 () Bool)

(assert (=> b!430396 (= e!254792 (not e!254787))))

(declare-fun res!252982 () Bool)

(assert (=> b!430396 (=> res!252982 e!254787)))

(assert (=> b!430396 (= res!252982 (not (validKeyInArray!0 (select (arr!12614 _keys!709) from!863))))))

(declare-fun lt!196925 () ListLongMap!6337)

(declare-fun lt!196918 () ListLongMap!6337)

(assert (=> b!430396 (= lt!196925 lt!196918)))

(assert (=> b!430396 (= lt!196918 (+!1332 lt!196921 lt!196931))))

(assert (=> b!430396 (= lt!196925 (getCurrentListMapNoExtraKeys!1380 lt!196930 lt!196922 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!430396 (= lt!196931 (tuple2!7411 k!794 v!412))))

(assert (=> b!430396 (= lt!196921 (getCurrentListMapNoExtraKeys!1380 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!196923 () Unit!12634)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!527 (array!26335 array!26337 (_ BitVec 32) (_ BitVec 32) V!16119 V!16119 (_ BitVec 32) (_ BitVec 64) V!16119 (_ BitVec 32) Int) Unit!12634)

(assert (=> b!430396 (= lt!196923 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!527 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!430397 () Bool)

(declare-fun e!254789 () Bool)

(assert (=> b!430397 (= e!254794 (and e!254789 mapRes!18513))))

(declare-fun condMapEmpty!18513 () Bool)

(declare-fun mapDefault!18513 () ValueCell!5287)

