; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37480 () Bool)

(assert start!37480)

(declare-fun b_free!8599 () Bool)

(declare-fun b_next!8599 () Bool)

(assert (=> start!37480 (= b_free!8599 (not b_next!8599))))

(declare-fun tp!30512 () Bool)

(declare-fun b_and!15859 () Bool)

(assert (=> start!37480 (= tp!30512 b_and!15859)))

(declare-fun b!381661 () Bool)

(declare-fun e!232007 () Bool)

(declare-fun e!232004 () Bool)

(assert (=> b!381661 (= e!232007 (not e!232004))))

(declare-fun res!217025 () Bool)

(assert (=> b!381661 (=> res!217025 e!232004)))

(declare-fun lt!179014 () Bool)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!381661 (= res!217025 (or (and (not lt!179014) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!179014) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!179014)))))

(assert (=> b!381661 (= lt!179014 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-datatypes ((V!13435 0))(
  ( (V!13436 (val!4668 Int)) )
))
(declare-datatypes ((ValueCell!4280 0))(
  ( (ValueCellFull!4280 (v!6861 V!13435)) (EmptyCell!4280) )
))
(declare-datatypes ((array!22385 0))(
  ( (array!22386 (arr!10658 (Array (_ BitVec 32) ValueCell!4280)) (size!11010 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22385)

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!6224 0))(
  ( (tuple2!6225 (_1!3122 (_ BitVec 64)) (_2!3122 V!13435)) )
))
(declare-datatypes ((List!6093 0))(
  ( (Nil!6090) (Cons!6089 (h!6945 tuple2!6224) (t!11251 List!6093)) )
))
(declare-datatypes ((ListLongMap!5151 0))(
  ( (ListLongMap!5152 (toList!2591 List!6093)) )
))
(declare-fun lt!179017 () ListLongMap!5151)

(declare-fun zeroValue!472 () V!13435)

(declare-datatypes ((array!22387 0))(
  ( (array!22388 (arr!10659 (Array (_ BitVec 32) (_ BitVec 64))) (size!11011 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22387)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!13435)

(declare-fun getCurrentListMap!2010 (array!22387 array!22385 (_ BitVec 32) (_ BitVec 32) V!13435 V!13435 (_ BitVec 32) Int) ListLongMap!5151)

(assert (=> b!381661 (= lt!179017 (getCurrentListMap!2010 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!179016 () array!22385)

(declare-fun lt!179015 () array!22387)

(declare-fun lt!179009 () ListLongMap!5151)

(assert (=> b!381661 (= lt!179009 (getCurrentListMap!2010 lt!179015 lt!179016 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!179012 () ListLongMap!5151)

(declare-fun lt!179010 () ListLongMap!5151)

(assert (=> b!381661 (and (= lt!179012 lt!179010) (= lt!179010 lt!179012))))

(declare-fun v!373 () V!13435)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun lt!179011 () ListLongMap!5151)

(declare-fun +!928 (ListLongMap!5151 tuple2!6224) ListLongMap!5151)

(assert (=> b!381661 (= lt!179010 (+!928 lt!179011 (tuple2!6225 k!778 v!373)))))

(declare-datatypes ((Unit!11749 0))(
  ( (Unit!11750) )
))
(declare-fun lt!179013 () Unit!11749)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!161 (array!22387 array!22385 (_ BitVec 32) (_ BitVec 32) V!13435 V!13435 (_ BitVec 32) (_ BitVec 64) V!13435 (_ BitVec 32) Int) Unit!11749)

(assert (=> b!381661 (= lt!179013 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!161 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!828 (array!22387 array!22385 (_ BitVec 32) (_ BitVec 32) V!13435 V!13435 (_ BitVec 32) Int) ListLongMap!5151)

(assert (=> b!381661 (= lt!179012 (getCurrentListMapNoExtraKeys!828 lt!179015 lt!179016 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!381661 (= lt!179016 (array!22386 (store (arr!10658 _values!506) i!548 (ValueCellFull!4280 v!373)) (size!11010 _values!506)))))

(assert (=> b!381661 (= lt!179011 (getCurrentListMapNoExtraKeys!828 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!381662 () Bool)

(declare-fun res!217028 () Bool)

(declare-fun e!232005 () Bool)

(assert (=> b!381662 (=> (not res!217028) (not e!232005))))

(declare-fun arrayContainsKey!0 (array!22387 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!381662 (= res!217028 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!381663 () Bool)

(declare-fun e!232006 () Bool)

(declare-fun tp_is_empty!9247 () Bool)

(assert (=> b!381663 (= e!232006 tp_is_empty!9247)))

(declare-fun mapIsEmpty!15435 () Bool)

(declare-fun mapRes!15435 () Bool)

(assert (=> mapIsEmpty!15435 mapRes!15435))

(declare-fun b!381664 () Bool)

(declare-fun res!217027 () Bool)

(assert (=> b!381664 (=> (not res!217027) (not e!232005))))

(assert (=> b!381664 (= res!217027 (and (= (size!11010 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11011 _keys!658) (size!11010 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!381665 () Bool)

(declare-fun res!217022 () Bool)

(assert (=> b!381665 (=> (not res!217022) (not e!232005))))

(assert (=> b!381665 (= res!217022 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11011 _keys!658))))))

(declare-fun b!381666 () Bool)

(assert (=> b!381666 (= e!232005 e!232007)))

(declare-fun res!217029 () Bool)

(assert (=> b!381666 (=> (not res!217029) (not e!232007))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22387 (_ BitVec 32)) Bool)

(assert (=> b!381666 (= res!217029 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!179015 mask!970))))

(assert (=> b!381666 (= lt!179015 (array!22388 (store (arr!10659 _keys!658) i!548 k!778) (size!11011 _keys!658)))))

(declare-fun b!381667 () Bool)

(declare-fun e!232002 () Bool)

(assert (=> b!381667 (= e!232002 (and e!232006 mapRes!15435))))

(declare-fun condMapEmpty!15435 () Bool)

(declare-fun mapDefault!15435 () ValueCell!4280)

