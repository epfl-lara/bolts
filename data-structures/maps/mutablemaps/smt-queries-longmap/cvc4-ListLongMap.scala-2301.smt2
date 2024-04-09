; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37280 () Bool)

(assert start!37280)

(declare-fun b_free!8399 () Bool)

(declare-fun b_next!8399 () Bool)

(assert (=> start!37280 (= b_free!8399 (not b_next!8399))))

(declare-fun tp!29913 () Bool)

(declare-fun b_and!15659 () Bool)

(assert (=> start!37280 (= tp!29913 b_and!15659)))

(declare-fun b!377226 () Bool)

(declare-fun e!229677 () Bool)

(declare-fun e!229680 () Bool)

(assert (=> b!377226 (= e!229677 (not e!229680))))

(declare-fun res!213491 () Bool)

(assert (=> b!377226 (=> res!213491 e!229680)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!377226 (= res!213491 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!13167 0))(
  ( (V!13168 (val!4568 Int)) )
))
(declare-datatypes ((ValueCell!4180 0))(
  ( (ValueCellFull!4180 (v!6761 V!13167)) (EmptyCell!4180) )
))
(declare-datatypes ((array!21993 0))(
  ( (array!21994 (arr!10462 (Array (_ BitVec 32) ValueCell!4180)) (size!10814 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21993)

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!6064 0))(
  ( (tuple2!6065 (_1!3042 (_ BitVec 64)) (_2!3042 V!13167)) )
))
(declare-datatypes ((List!5934 0))(
  ( (Nil!5931) (Cons!5930 (h!6786 tuple2!6064) (t!11092 List!5934)) )
))
(declare-datatypes ((ListLongMap!4991 0))(
  ( (ListLongMap!4992 (toList!2511 List!5934)) )
))
(declare-fun lt!175447 () ListLongMap!4991)

(declare-fun zeroValue!472 () V!13167)

(declare-datatypes ((array!21995 0))(
  ( (array!21996 (arr!10463 (Array (_ BitVec 32) (_ BitVec 64))) (size!10815 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21995)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!13167)

(declare-fun getCurrentListMap!1948 (array!21995 array!21993 (_ BitVec 32) (_ BitVec 32) V!13167 V!13167 (_ BitVec 32) Int) ListLongMap!4991)

(assert (=> b!377226 (= lt!175447 (getCurrentListMap!1948 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!175445 () array!21993)

(declare-fun lt!175442 () array!21995)

(declare-fun lt!175443 () ListLongMap!4991)

(assert (=> b!377226 (= lt!175443 (getCurrentListMap!1948 lt!175442 lt!175445 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!175452 () ListLongMap!4991)

(declare-fun lt!175448 () ListLongMap!4991)

(assert (=> b!377226 (and (= lt!175452 lt!175448) (= lt!175448 lt!175452))))

(declare-fun lt!175446 () ListLongMap!4991)

(declare-fun lt!175444 () tuple2!6064)

(declare-fun +!852 (ListLongMap!4991 tuple2!6064) ListLongMap!4991)

(assert (=> b!377226 (= lt!175448 (+!852 lt!175446 lt!175444))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun v!373 () V!13167)

(assert (=> b!377226 (= lt!175444 (tuple2!6065 k!778 v!373))))

(declare-datatypes ((Unit!11605 0))(
  ( (Unit!11606) )
))
(declare-fun lt!175449 () Unit!11605)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!99 (array!21995 array!21993 (_ BitVec 32) (_ BitVec 32) V!13167 V!13167 (_ BitVec 32) (_ BitVec 64) V!13167 (_ BitVec 32) Int) Unit!11605)

(assert (=> b!377226 (= lt!175449 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!99 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!766 (array!21995 array!21993 (_ BitVec 32) (_ BitVec 32) V!13167 V!13167 (_ BitVec 32) Int) ListLongMap!4991)

(assert (=> b!377226 (= lt!175452 (getCurrentListMapNoExtraKeys!766 lt!175442 lt!175445 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!377226 (= lt!175445 (array!21994 (store (arr!10462 _values!506) i!548 (ValueCellFull!4180 v!373)) (size!10814 _values!506)))))

(assert (=> b!377226 (= lt!175446 (getCurrentListMapNoExtraKeys!766 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!377227 () Bool)

(declare-fun res!213492 () Bool)

(declare-fun e!229682 () Bool)

(assert (=> b!377227 (=> (not res!213492) (not e!229682))))

(declare-datatypes ((List!5935 0))(
  ( (Nil!5932) (Cons!5931 (h!6787 (_ BitVec 64)) (t!11093 List!5935)) )
))
(declare-fun arrayNoDuplicates!0 (array!21995 (_ BitVec 32) List!5935) Bool)

(assert (=> b!377227 (= res!213492 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5932))))

(declare-fun b!377228 () Bool)

(declare-fun res!213494 () Bool)

(assert (=> b!377228 (=> (not res!213494) (not e!229682))))

(assert (=> b!377228 (= res!213494 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10815 _keys!658))))))

(declare-fun b!377229 () Bool)

(declare-fun e!229678 () Bool)

(declare-fun tp_is_empty!9047 () Bool)

(assert (=> b!377229 (= e!229678 tp_is_empty!9047)))

(declare-fun res!213495 () Bool)

(assert (=> start!37280 (=> (not res!213495) (not e!229682))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37280 (= res!213495 (validMask!0 mask!970))))

(assert (=> start!37280 e!229682))

(declare-fun e!229679 () Bool)

(declare-fun array_inv!7704 (array!21993) Bool)

(assert (=> start!37280 (and (array_inv!7704 _values!506) e!229679)))

(assert (=> start!37280 tp!29913))

(assert (=> start!37280 true))

(assert (=> start!37280 tp_is_empty!9047))

(declare-fun array_inv!7705 (array!21995) Bool)

(assert (=> start!37280 (array_inv!7705 _keys!658)))

(declare-fun b!377230 () Bool)

(declare-fun res!213497 () Bool)

(assert (=> b!377230 (=> (not res!213497) (not e!229682))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!377230 (= res!213497 (validKeyInArray!0 k!778))))

(declare-fun mapIsEmpty!15135 () Bool)

(declare-fun mapRes!15135 () Bool)

(assert (=> mapIsEmpty!15135 mapRes!15135))

(declare-fun b!377231 () Bool)

(declare-fun e!229683 () Bool)

(assert (=> b!377231 (= e!229683 tp_is_empty!9047)))

(declare-fun mapNonEmpty!15135 () Bool)

(declare-fun tp!29912 () Bool)

(assert (=> mapNonEmpty!15135 (= mapRes!15135 (and tp!29912 e!229683))))

(declare-fun mapRest!15135 () (Array (_ BitVec 32) ValueCell!4180))

(declare-fun mapKey!15135 () (_ BitVec 32))

(declare-fun mapValue!15135 () ValueCell!4180)

(assert (=> mapNonEmpty!15135 (= (arr!10462 _values!506) (store mapRest!15135 mapKey!15135 mapValue!15135))))

(declare-fun b!377232 () Bool)

(declare-fun e!229676 () Bool)

(assert (=> b!377232 (= e!229676 true)))

(declare-fun lt!175451 () ListLongMap!4991)

(declare-fun lt!175450 () ListLongMap!4991)

(assert (=> b!377232 (= lt!175451 (+!852 lt!175450 lt!175444))))

(declare-fun lt!175441 () Unit!11605)

(declare-fun addCommutativeForDiffKeys!273 (ListLongMap!4991 (_ BitVec 64) V!13167 (_ BitVec 64) V!13167) Unit!11605)

(assert (=> b!377232 (= lt!175441 (addCommutativeForDiffKeys!273 lt!175446 k!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!377233 () Bool)

(declare-fun res!213493 () Bool)

(assert (=> b!377233 (=> (not res!213493) (not e!229682))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21995 (_ BitVec 32)) Bool)

(assert (=> b!377233 (= res!213493 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!377234 () Bool)

(declare-fun res!213489 () Bool)

(assert (=> b!377234 (=> (not res!213489) (not e!229682))))

(assert (=> b!377234 (= res!213489 (and (= (size!10814 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10815 _keys!658) (size!10814 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!377235 () Bool)

(declare-fun res!213486 () Bool)

(assert (=> b!377235 (=> (not res!213486) (not e!229677))))

(assert (=> b!377235 (= res!213486 (arrayNoDuplicates!0 lt!175442 #b00000000000000000000000000000000 Nil!5932))))

(declare-fun b!377236 () Bool)

(assert (=> b!377236 (= e!229682 e!229677)))

(declare-fun res!213487 () Bool)

(assert (=> b!377236 (=> (not res!213487) (not e!229677))))

(assert (=> b!377236 (= res!213487 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!175442 mask!970))))

(assert (=> b!377236 (= lt!175442 (array!21996 (store (arr!10463 _keys!658) i!548 k!778) (size!10815 _keys!658)))))

(declare-fun b!377237 () Bool)

(declare-fun res!213490 () Bool)

(assert (=> b!377237 (=> (not res!213490) (not e!229682))))

(assert (=> b!377237 (= res!213490 (or (= (select (arr!10463 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10463 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!377238 () Bool)

(declare-fun res!213496 () Bool)

(assert (=> b!377238 (=> (not res!213496) (not e!229682))))

(declare-fun arrayContainsKey!0 (array!21995 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!377238 (= res!213496 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!377239 () Bool)

(assert (=> b!377239 (= e!229679 (and e!229678 mapRes!15135))))

(declare-fun condMapEmpty!15135 () Bool)

(declare-fun mapDefault!15135 () ValueCell!4180)

