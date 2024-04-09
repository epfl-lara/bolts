; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39300 () Bool)

(assert start!39300)

(declare-fun b_free!9559 () Bool)

(declare-fun b_next!9559 () Bool)

(assert (=> start!39300 (= b_free!9559 (not b_next!9559))))

(declare-fun tp!34206 () Bool)

(declare-fun b_and!17011 () Bool)

(assert (=> start!39300 (= tp!34206 b_and!17011)))

(declare-datatypes ((V!15387 0))(
  ( (V!15388 (val!5400 Int)) )
))
(declare-datatypes ((tuple2!6962 0))(
  ( (tuple2!6963 (_1!3491 (_ BitVec 64)) (_2!3491 V!15387)) )
))
(declare-datatypes ((List!7017 0))(
  ( (Nil!7014) (Cons!7013 (h!7869 tuple2!6962) (t!12249 List!7017)) )
))
(declare-datatypes ((ListLongMap!5889 0))(
  ( (ListLongMap!5890 (toList!2960 List!7017)) )
))
(declare-fun call!28853 () ListLongMap!5889)

(declare-fun e!248190 () Bool)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun call!28852 () ListLongMap!5889)

(declare-fun b!415583 () Bool)

(declare-fun v!412 () V!15387)

(declare-fun +!1173 (ListLongMap!5889 tuple2!6962) ListLongMap!5889)

(assert (=> b!415583 (= e!248190 (= call!28853 (+!1173 call!28852 (tuple2!6963 k!794 v!412))))))

(declare-fun b!415584 () Bool)

(declare-fun res!241885 () Bool)

(declare-fun e!248192 () Bool)

(assert (=> b!415584 (=> (not res!241885) (not e!248192))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!25259 0))(
  ( (array!25260 (arr!12076 (Array (_ BitVec 32) (_ BitVec 64))) (size!12428 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25259)

(assert (=> b!415584 (= res!241885 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12428 _keys!709))))))

(declare-fun b!415585 () Bool)

(declare-fun res!241890 () Bool)

(declare-fun e!248197 () Bool)

(assert (=> b!415585 (=> (not res!241890) (not e!248197))))

(declare-fun lt!190301 () array!25259)

(declare-datatypes ((List!7018 0))(
  ( (Nil!7015) (Cons!7014 (h!7870 (_ BitVec 64)) (t!12250 List!7018)) )
))
(declare-fun arrayNoDuplicates!0 (array!25259 (_ BitVec 32) List!7018) Bool)

(assert (=> b!415585 (= res!241890 (arrayNoDuplicates!0 lt!190301 #b00000000000000000000000000000000 Nil!7015))))

(declare-fun mapIsEmpty!17688 () Bool)

(declare-fun mapRes!17688 () Bool)

(assert (=> mapIsEmpty!17688 mapRes!17688))

(declare-fun b!415587 () Bool)

(declare-fun res!241883 () Bool)

(assert (=> b!415587 (=> (not res!241883) (not e!248192))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!415587 (= res!241883 (validMask!0 mask!1025))))

(declare-fun b!415588 () Bool)

(assert (=> b!415588 (= e!248190 (= call!28852 call!28853))))

(declare-fun b!415589 () Bool)

(declare-fun res!241889 () Bool)

(assert (=> b!415589 (=> (not res!241889) (not e!248197))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!415589 (= res!241889 (bvsle from!863 i!563))))

(declare-fun b!415590 () Bool)

(assert (=> b!415590 (= e!248192 e!248197)))

(declare-fun res!241881 () Bool)

(assert (=> b!415590 (=> (not res!241881) (not e!248197))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25259 (_ BitVec 32)) Bool)

(assert (=> b!415590 (= res!241881 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!190301 mask!1025))))

(assert (=> b!415590 (= lt!190301 (array!25260 (store (arr!12076 _keys!709) i!563 k!794) (size!12428 _keys!709)))))

(declare-fun mapNonEmpty!17688 () Bool)

(declare-fun tp!34205 () Bool)

(declare-fun e!248193 () Bool)

(assert (=> mapNonEmpty!17688 (= mapRes!17688 (and tp!34205 e!248193))))

(declare-datatypes ((ValueCell!5012 0))(
  ( (ValueCellFull!5012 (v!7643 V!15387)) (EmptyCell!5012) )
))
(declare-fun mapRest!17688 () (Array (_ BitVec 32) ValueCell!5012))

(declare-fun mapValue!17688 () ValueCell!5012)

(declare-datatypes ((array!25261 0))(
  ( (array!25262 (arr!12077 (Array (_ BitVec 32) ValueCell!5012)) (size!12429 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25261)

(declare-fun mapKey!17688 () (_ BitVec 32))

(assert (=> mapNonEmpty!17688 (= (arr!12077 _values!549) (store mapRest!17688 mapKey!17688 mapValue!17688))))

(declare-fun b!415591 () Bool)

(declare-fun res!241879 () Bool)

(assert (=> b!415591 (=> (not res!241879) (not e!248192))))

(assert (=> b!415591 (= res!241879 (or (= (select (arr!12076 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12076 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!415592 () Bool)

(declare-fun res!241882 () Bool)

(assert (=> b!415592 (=> (not res!241882) (not e!248192))))

(declare-fun arrayContainsKey!0 (array!25259 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!415592 (= res!241882 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!415593 () Bool)

(declare-fun e!248195 () Bool)

(declare-fun e!248194 () Bool)

(assert (=> b!415593 (= e!248195 (not e!248194))))

(declare-fun res!241878 () Bool)

(assert (=> b!415593 (=> res!241878 e!248194)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!415593 (= res!241878 (validKeyInArray!0 (select (arr!12076 _keys!709) from!863)))))

(assert (=> b!415593 e!248190))

(declare-fun c!54977 () Bool)

(assert (=> b!415593 (= c!54977 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun minValue!515 () V!15387)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15387)

(declare-datatypes ((Unit!12245 0))(
  ( (Unit!12246) )
))
(declare-fun lt!190305 () Unit!12245)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!385 (array!25259 array!25261 (_ BitVec 32) (_ BitVec 32) V!15387 V!15387 (_ BitVec 32) (_ BitVec 64) V!15387 (_ BitVec 32) Int) Unit!12245)

(assert (=> b!415593 (= lt!190305 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!385 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!415594 () Bool)

(assert (=> b!415594 (= e!248194 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!12428 _keys!709))))))

(declare-fun lt!190303 () array!25261)

(declare-fun lt!190304 () ListLongMap!5889)

(declare-fun getCurrentListMapNoExtraKeys!1164 (array!25259 array!25261 (_ BitVec 32) (_ BitVec 32) V!15387 V!15387 (_ BitVec 32) Int) ListLongMap!5889)

(declare-fun get!5968 (ValueCell!5012 V!15387) V!15387)

(declare-fun dynLambda!661 (Int (_ BitVec 64)) V!15387)

(assert (=> b!415594 (= lt!190304 (+!1173 (getCurrentListMapNoExtraKeys!1164 lt!190301 lt!190303 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!6963 (select (arr!12076 lt!190301) from!863) (get!5968 (select (arr!12077 lt!190303) from!863) (dynLambda!661 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun res!241880 () Bool)

(assert (=> start!39300 (=> (not res!241880) (not e!248192))))

(assert (=> start!39300 (= res!241880 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12428 _keys!709))))))

(assert (=> start!39300 e!248192))

(declare-fun tp_is_empty!10711 () Bool)

(assert (=> start!39300 tp_is_empty!10711))

(assert (=> start!39300 tp!34206))

(assert (=> start!39300 true))

(declare-fun e!248196 () Bool)

(declare-fun array_inv!8808 (array!25261) Bool)

(assert (=> start!39300 (and (array_inv!8808 _values!549) e!248196)))

(declare-fun array_inv!8809 (array!25259) Bool)

(assert (=> start!39300 (array_inv!8809 _keys!709)))

(declare-fun b!415586 () Bool)

(declare-fun res!241886 () Bool)

(assert (=> b!415586 (=> (not res!241886) (not e!248192))))

(assert (=> b!415586 (= res!241886 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!415595 () Bool)

(declare-fun res!241884 () Bool)

(assert (=> b!415595 (=> (not res!241884) (not e!248192))))

(assert (=> b!415595 (= res!241884 (and (= (size!12429 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12428 _keys!709) (size!12429 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!415596 () Bool)

(declare-fun res!241877 () Bool)

(assert (=> b!415596 (=> (not res!241877) (not e!248192))))

(assert (=> b!415596 (= res!241877 (validKeyInArray!0 k!794))))

(declare-fun b!415597 () Bool)

(assert (=> b!415597 (= e!248193 tp_is_empty!10711)))

(declare-fun b!415598 () Bool)

(declare-fun e!248191 () Bool)

(assert (=> b!415598 (= e!248196 (and e!248191 mapRes!17688))))

(declare-fun condMapEmpty!17688 () Bool)

(declare-fun mapDefault!17688 () ValueCell!5012)

