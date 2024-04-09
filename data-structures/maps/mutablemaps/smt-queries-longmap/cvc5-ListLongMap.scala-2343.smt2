; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37528 () Bool)

(assert start!37528)

(declare-fun b_free!8647 () Bool)

(declare-fun b_next!8647 () Bool)

(assert (=> start!37528 (= b_free!8647 (not b_next!8647))))

(declare-fun tp!30657 () Bool)

(declare-fun b_and!15907 () Bool)

(assert (=> start!37528 (= tp!30657 b_and!15907)))

(declare-fun b!382669 () Bool)

(declare-fun e!232512 () Bool)

(declare-fun e!232506 () Bool)

(assert (=> b!382669 (= e!232512 (not e!232506))))

(declare-fun res!217817 () Bool)

(assert (=> b!382669 (=> res!217817 e!232506)))

(declare-fun lt!179663 () Bool)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!382669 (= res!217817 (or (and (not lt!179663) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!179663) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!179663)))))

(assert (=> b!382669 (= lt!179663 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-datatypes ((V!13499 0))(
  ( (V!13500 (val!4692 Int)) )
))
(declare-datatypes ((ValueCell!4304 0))(
  ( (ValueCellFull!4304 (v!6885 V!13499)) (EmptyCell!4304) )
))
(declare-datatypes ((array!22481 0))(
  ( (array!22482 (arr!10706 (Array (_ BitVec 32) ValueCell!4304)) (size!11058 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22481)

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((array!22483 0))(
  ( (array!22484 (arr!10707 (Array (_ BitVec 32) (_ BitVec 64))) (size!11059 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22483)

(declare-datatypes ((tuple2!6262 0))(
  ( (tuple2!6263 (_1!3141 (_ BitVec 64)) (_2!3141 V!13499)) )
))
(declare-datatypes ((List!6129 0))(
  ( (Nil!6126) (Cons!6125 (h!6981 tuple2!6262) (t!11287 List!6129)) )
))
(declare-datatypes ((ListLongMap!5189 0))(
  ( (ListLongMap!5190 (toList!2610 List!6129)) )
))
(declare-fun lt!179661 () ListLongMap!5189)

(declare-fun zeroValue!472 () V!13499)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!13499)

(declare-fun getCurrentListMap!2028 (array!22483 array!22481 (_ BitVec 32) (_ BitVec 32) V!13499 V!13499 (_ BitVec 32) Int) ListLongMap!5189)

(assert (=> b!382669 (= lt!179661 (getCurrentListMap!2028 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!179665 () ListLongMap!5189)

(declare-fun lt!179657 () array!22481)

(declare-fun lt!179660 () array!22483)

(assert (=> b!382669 (= lt!179665 (getCurrentListMap!2028 lt!179660 lt!179657 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!179658 () ListLongMap!5189)

(declare-fun lt!179662 () ListLongMap!5189)

(assert (=> b!382669 (and (= lt!179658 lt!179662) (= lt!179662 lt!179658))))

(declare-fun v!373 () V!13499)

(declare-fun lt!179659 () ListLongMap!5189)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun +!946 (ListLongMap!5189 tuple2!6262) ListLongMap!5189)

(assert (=> b!382669 (= lt!179662 (+!946 lt!179659 (tuple2!6263 k!778 v!373)))))

(declare-datatypes ((Unit!11785 0))(
  ( (Unit!11786) )
))
(declare-fun lt!179664 () Unit!11785)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!179 (array!22483 array!22481 (_ BitVec 32) (_ BitVec 32) V!13499 V!13499 (_ BitVec 32) (_ BitVec 64) V!13499 (_ BitVec 32) Int) Unit!11785)

(assert (=> b!382669 (= lt!179664 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!179 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!846 (array!22483 array!22481 (_ BitVec 32) (_ BitVec 32) V!13499 V!13499 (_ BitVec 32) Int) ListLongMap!5189)

(assert (=> b!382669 (= lt!179658 (getCurrentListMapNoExtraKeys!846 lt!179660 lt!179657 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!382669 (= lt!179657 (array!22482 (store (arr!10706 _values!506) i!548 (ValueCellFull!4304 v!373)) (size!11058 _values!506)))))

(assert (=> b!382669 (= lt!179659 (getCurrentListMapNoExtraKeys!846 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!382670 () Bool)

(assert (=> b!382670 (= e!232506 true)))

(assert (=> b!382670 (= lt!179665 lt!179658)))

(declare-fun b!382671 () Bool)

(declare-fun e!232507 () Bool)

(declare-fun tp_is_empty!9295 () Bool)

(assert (=> b!382671 (= e!232507 tp_is_empty!9295)))

(declare-fun mapIsEmpty!15507 () Bool)

(declare-fun mapRes!15507 () Bool)

(assert (=> mapIsEmpty!15507 mapRes!15507))

(declare-fun res!217823 () Bool)

(declare-fun e!232510 () Bool)

(assert (=> start!37528 (=> (not res!217823) (not e!232510))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37528 (= res!217823 (validMask!0 mask!970))))

(assert (=> start!37528 e!232510))

(declare-fun e!232509 () Bool)

(declare-fun array_inv!7862 (array!22481) Bool)

(assert (=> start!37528 (and (array_inv!7862 _values!506) e!232509)))

(assert (=> start!37528 tp!30657))

(assert (=> start!37528 true))

(assert (=> start!37528 tp_is_empty!9295))

(declare-fun array_inv!7863 (array!22483) Bool)

(assert (=> start!37528 (array_inv!7863 _keys!658)))

(declare-fun b!382672 () Bool)

(declare-fun res!217813 () Bool)

(assert (=> b!382672 (=> (not res!217813) (not e!232510))))

(assert (=> b!382672 (= res!217813 (or (= (select (arr!10707 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10707 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!382673 () Bool)

(declare-fun e!232511 () Bool)

(assert (=> b!382673 (= e!232511 tp_is_empty!9295)))

(declare-fun mapNonEmpty!15507 () Bool)

(declare-fun tp!30656 () Bool)

(assert (=> mapNonEmpty!15507 (= mapRes!15507 (and tp!30656 e!232507))))

(declare-fun mapKey!15507 () (_ BitVec 32))

(declare-fun mapValue!15507 () ValueCell!4304)

(declare-fun mapRest!15507 () (Array (_ BitVec 32) ValueCell!4304))

(assert (=> mapNonEmpty!15507 (= (arr!10706 _values!506) (store mapRest!15507 mapKey!15507 mapValue!15507))))

(declare-fun b!382674 () Bool)

(declare-fun res!217816 () Bool)

(assert (=> b!382674 (=> (not res!217816) (not e!232510))))

(declare-datatypes ((List!6130 0))(
  ( (Nil!6127) (Cons!6126 (h!6982 (_ BitVec 64)) (t!11288 List!6130)) )
))
(declare-fun arrayNoDuplicates!0 (array!22483 (_ BitVec 32) List!6130) Bool)

(assert (=> b!382674 (= res!217816 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6127))))

(declare-fun b!382675 () Bool)

(declare-fun res!217820 () Bool)

(assert (=> b!382675 (=> (not res!217820) (not e!232510))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!382675 (= res!217820 (validKeyInArray!0 k!778))))

(declare-fun b!382676 () Bool)

(declare-fun res!217821 () Bool)

(assert (=> b!382676 (=> (not res!217821) (not e!232510))))

(assert (=> b!382676 (= res!217821 (and (= (size!11058 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11059 _keys!658) (size!11058 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!382677 () Bool)

(declare-fun res!217822 () Bool)

(assert (=> b!382677 (=> (not res!217822) (not e!232510))))

(assert (=> b!382677 (= res!217822 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11059 _keys!658))))))

(declare-fun b!382678 () Bool)

(declare-fun res!217815 () Bool)

(assert (=> b!382678 (=> (not res!217815) (not e!232510))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22483 (_ BitVec 32)) Bool)

(assert (=> b!382678 (= res!217815 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!382679 () Bool)

(assert (=> b!382679 (= e!232509 (and e!232511 mapRes!15507))))

(declare-fun condMapEmpty!15507 () Bool)

(declare-fun mapDefault!15507 () ValueCell!4304)

