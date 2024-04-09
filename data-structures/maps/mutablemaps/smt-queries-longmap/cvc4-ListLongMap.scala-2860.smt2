; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41202 () Bool)

(assert start!41202)

(declare-fun b_free!11063 () Bool)

(declare-fun b_next!11063 () Bool)

(assert (=> start!41202 (= b_free!11063 (not b_next!11063))))

(declare-fun tp!39025 () Bool)

(declare-fun b_and!19383 () Bool)

(assert (=> start!41202 (= tp!39025 b_and!19383)))

(declare-fun b!460548 () Bool)

(declare-fun res!275462 () Bool)

(declare-fun e!268669 () Bool)

(assert (=> b!460548 (=> (not res!275462) (not e!268669))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!460548 (= res!275462 (validKeyInArray!0 k!794))))

(declare-fun b!460549 () Bool)

(declare-fun e!268667 () Bool)

(assert (=> b!460549 (= e!268669 e!268667)))

(declare-fun res!275465 () Bool)

(assert (=> b!460549 (=> (not res!275465) (not e!268667))))

(declare-datatypes ((array!28563 0))(
  ( (array!28564 (arr!13719 (Array (_ BitVec 32) (_ BitVec 64))) (size!14071 (_ BitVec 32))) )
))
(declare-fun lt!208691 () array!28563)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28563 (_ BitVec 32)) Bool)

(assert (=> b!460549 (= res!275465 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!208691 mask!1025))))

(declare-fun _keys!709 () array!28563)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!460549 (= lt!208691 (array!28564 (store (arr!13719 _keys!709) i!563 k!794) (size!14071 _keys!709)))))

(declare-fun b!460550 () Bool)

(declare-fun res!275463 () Bool)

(assert (=> b!460550 (=> (not res!275463) (not e!268667))))

(declare-datatypes ((List!8308 0))(
  ( (Nil!8305) (Cons!8304 (h!9160 (_ BitVec 64)) (t!14258 List!8308)) )
))
(declare-fun arrayNoDuplicates!0 (array!28563 (_ BitVec 32) List!8308) Bool)

(assert (=> b!460550 (= res!275463 (arrayNoDuplicates!0 lt!208691 #b00000000000000000000000000000000 Nil!8305))))

(declare-fun mapNonEmpty!20251 () Bool)

(declare-fun mapRes!20251 () Bool)

(declare-fun tp!39024 () Bool)

(declare-fun e!268670 () Bool)

(assert (=> mapNonEmpty!20251 (= mapRes!20251 (and tp!39024 e!268670))))

(declare-datatypes ((V!17639 0))(
  ( (V!17640 (val!6245 Int)) )
))
(declare-datatypes ((ValueCell!5857 0))(
  ( (ValueCellFull!5857 (v!8519 V!17639)) (EmptyCell!5857) )
))
(declare-fun mapRest!20251 () (Array (_ BitVec 32) ValueCell!5857))

(declare-datatypes ((array!28565 0))(
  ( (array!28566 (arr!13720 (Array (_ BitVec 32) ValueCell!5857)) (size!14072 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28565)

(declare-fun mapKey!20251 () (_ BitVec 32))

(declare-fun mapValue!20251 () ValueCell!5857)

(assert (=> mapNonEmpty!20251 (= (arr!13720 _values!549) (store mapRest!20251 mapKey!20251 mapValue!20251))))

(declare-fun b!460551 () Bool)

(declare-datatypes ((Unit!13363 0))(
  ( (Unit!13364) )
))
(declare-fun e!268671 () Unit!13363)

(declare-fun Unit!13365 () Unit!13363)

(assert (=> b!460551 (= e!268671 Unit!13365)))

(declare-fun lt!208685 () Unit!13363)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!28563 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!13363)

(assert (=> b!460551 (= lt!208685 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!460551 false))

(declare-fun b!460552 () Bool)

(declare-fun e!268664 () Bool)

(declare-datatypes ((tuple2!8206 0))(
  ( (tuple2!8207 (_1!4113 (_ BitVec 64)) (_2!4113 V!17639)) )
))
(declare-datatypes ((List!8309 0))(
  ( (Nil!8306) (Cons!8305 (h!9161 tuple2!8206) (t!14259 List!8309)) )
))
(declare-datatypes ((ListLongMap!7133 0))(
  ( (ListLongMap!7134 (toList!3582 List!8309)) )
))
(declare-fun lt!208696 () ListLongMap!7133)

(declare-fun lt!208684 () tuple2!8206)

(declare-fun lt!208686 () ListLongMap!7133)

(declare-fun +!1601 (ListLongMap!7133 tuple2!8206) ListLongMap!7133)

(assert (=> b!460552 (= e!268664 (= lt!208696 (+!1601 lt!208686 lt!208684)))))

(declare-fun lt!208692 () ListLongMap!7133)

(declare-fun lt!208687 () ListLongMap!7133)

(declare-fun lt!208698 () tuple2!8206)

(assert (=> b!460552 (= lt!208692 (+!1601 (+!1601 lt!208687 lt!208698) lt!208684))))

(declare-fun lt!208688 () V!17639)

(declare-fun lt!208690 () Unit!13363)

(declare-fun v!412 () V!17639)

(declare-fun addCommutativeForDiffKeys!425 (ListLongMap!7133 (_ BitVec 64) V!17639 (_ BitVec 64) V!17639) Unit!13363)

(assert (=> b!460552 (= lt!208690 (addCommutativeForDiffKeys!425 lt!208687 k!794 v!412 (select (arr!13719 _keys!709) from!863) lt!208688))))

(declare-fun b!460553 () Bool)

(declare-fun Unit!13366 () Unit!13363)

(assert (=> b!460553 (= e!268671 Unit!13366)))

(declare-fun b!460554 () Bool)

(declare-fun res!275472 () Bool)

(assert (=> b!460554 (=> (not res!275472) (not e!268669))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!460554 (= res!275472 (validMask!0 mask!1025))))

(declare-fun b!460555 () Bool)

(declare-fun res!275474 () Bool)

(assert (=> b!460555 (=> (not res!275474) (not e!268667))))

(assert (=> b!460555 (= res!275474 (bvsle from!863 i!563))))

(declare-fun b!460556 () Bool)

(declare-fun e!268666 () Bool)

(declare-fun e!268668 () Bool)

(assert (=> b!460556 (= e!268666 (not e!268668))))

(declare-fun res!275473 () Bool)

(assert (=> b!460556 (=> res!275473 e!268668)))

(assert (=> b!460556 (= res!275473 (not (validKeyInArray!0 (select (arr!13719 _keys!709) from!863))))))

(declare-fun lt!208695 () ListLongMap!7133)

(declare-fun lt!208689 () ListLongMap!7133)

(assert (=> b!460556 (= lt!208695 lt!208689)))

(assert (=> b!460556 (= lt!208689 (+!1601 lt!208687 lt!208684))))

(declare-fun minValue!515 () V!17639)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!208694 () array!28565)

(declare-fun zeroValue!515 () V!17639)

(declare-fun getCurrentListMapNoExtraKeys!1750 (array!28563 array!28565 (_ BitVec 32) (_ BitVec 32) V!17639 V!17639 (_ BitVec 32) Int) ListLongMap!7133)

(assert (=> b!460556 (= lt!208695 (getCurrentListMapNoExtraKeys!1750 lt!208691 lt!208694 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!460556 (= lt!208684 (tuple2!8207 k!794 v!412))))

(assert (=> b!460556 (= lt!208687 (getCurrentListMapNoExtraKeys!1750 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!208693 () Unit!13363)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!753 (array!28563 array!28565 (_ BitVec 32) (_ BitVec 32) V!17639 V!17639 (_ BitVec 32) (_ BitVec 64) V!17639 (_ BitVec 32) Int) Unit!13363)

(assert (=> b!460556 (= lt!208693 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!753 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!460557 () Bool)

(declare-fun res!275467 () Bool)

(assert (=> b!460557 (=> (not res!275467) (not e!268669))))

(assert (=> b!460557 (= res!275467 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!14071 _keys!709))))))

(declare-fun b!460558 () Bool)

(assert (=> b!460558 (= e!268667 e!268666)))

(declare-fun res!275469 () Bool)

(assert (=> b!460558 (=> (not res!275469) (not e!268666))))

(assert (=> b!460558 (= res!275469 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(assert (=> b!460558 (= lt!208696 (getCurrentListMapNoExtraKeys!1750 lt!208691 lt!208694 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!460558 (= lt!208694 (array!28566 (store (arr!13720 _values!549) i!563 (ValueCellFull!5857 v!412)) (size!14072 _values!549)))))

(assert (=> b!460558 (= lt!208686 (getCurrentListMapNoExtraKeys!1750 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!460559 () Bool)

(assert (=> b!460559 (= e!268668 e!268664)))

(declare-fun res!275468 () Bool)

(assert (=> b!460559 (=> res!275468 e!268664)))

(assert (=> b!460559 (= res!275468 (= k!794 (select (arr!13719 _keys!709) from!863)))))

(assert (=> b!460559 (not (= (select (arr!13719 _keys!709) from!863) k!794))))

(declare-fun lt!208697 () Unit!13363)

(assert (=> b!460559 (= lt!208697 e!268671)))

(declare-fun c!56468 () Bool)

(assert (=> b!460559 (= c!56468 (= (select (arr!13719 _keys!709) from!863) k!794))))

(assert (=> b!460559 (= lt!208696 lt!208692)))

(assert (=> b!460559 (= lt!208692 (+!1601 lt!208689 lt!208698))))

(assert (=> b!460559 (= lt!208698 (tuple2!8207 (select (arr!13719 _keys!709) from!863) lt!208688))))

(declare-fun get!6789 (ValueCell!5857 V!17639) V!17639)

(declare-fun dynLambda!909 (Int (_ BitVec 64)) V!17639)

(assert (=> b!460559 (= lt!208688 (get!6789 (select (arr!13720 _values!549) from!863) (dynLambda!909 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!460560 () Bool)

(declare-fun e!268672 () Bool)

(declare-fun e!268665 () Bool)

(assert (=> b!460560 (= e!268672 (and e!268665 mapRes!20251))))

(declare-fun condMapEmpty!20251 () Bool)

(declare-fun mapDefault!20251 () ValueCell!5857)

