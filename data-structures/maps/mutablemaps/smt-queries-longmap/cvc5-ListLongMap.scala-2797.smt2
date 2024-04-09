; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40678 () Bool)

(assert start!40678)

(declare-fun b_free!10681 () Bool)

(declare-fun b_next!10681 () Bool)

(assert (=> start!40678 (= b_free!10681 (not b_next!10681))))

(declare-fun tp!37862 () Bool)

(declare-fun b_and!18707 () Bool)

(assert (=> start!40678 (= tp!37862 b_and!18707)))

(declare-fun b!449297 () Bool)

(declare-fun res!267339 () Bool)

(declare-fun e!263443 () Bool)

(assert (=> b!449297 (=> (not res!267339) (not e!263443))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!27805 0))(
  ( (array!27806 (arr!13345 (Array (_ BitVec 32) (_ BitVec 64))) (size!13697 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27805)

(assert (=> b!449297 (= res!267339 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13697 _keys!709))))))

(declare-fun b!449298 () Bool)

(declare-fun res!267342 () Bool)

(declare-fun e!263444 () Bool)

(assert (=> b!449298 (=> (not res!267342) (not e!263444))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!449298 (= res!267342 (bvsle from!863 i!563))))

(declare-fun b!449299 () Bool)

(declare-fun res!267331 () Bool)

(assert (=> b!449299 (=> (not res!267331) (not e!263443))))

(declare-datatypes ((List!7995 0))(
  ( (Nil!7992) (Cons!7991 (h!8847 (_ BitVec 64)) (t!13765 List!7995)) )
))
(declare-fun arrayNoDuplicates!0 (array!27805 (_ BitVec 32) List!7995) Bool)

(assert (=> b!449299 (= res!267331 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7992))))

(declare-fun b!449300 () Bool)

(declare-fun res!267333 () Bool)

(assert (=> b!449300 (=> (not res!267333) (not e!263443))))

(assert (=> b!449300 (= res!267333 (or (= (select (arr!13345 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13345 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!19662 () Bool)

(declare-fun mapRes!19662 () Bool)

(declare-fun tp!37863 () Bool)

(declare-fun e!263442 () Bool)

(assert (=> mapNonEmpty!19662 (= mapRes!19662 (and tp!37863 e!263442))))

(declare-datatypes ((V!17131 0))(
  ( (V!17132 (val!6054 Int)) )
))
(declare-datatypes ((ValueCell!5666 0))(
  ( (ValueCellFull!5666 (v!8305 V!17131)) (EmptyCell!5666) )
))
(declare-fun mapValue!19662 () ValueCell!5666)

(declare-datatypes ((array!27807 0))(
  ( (array!27808 (arr!13346 (Array (_ BitVec 32) ValueCell!5666)) (size!13698 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27807)

(declare-fun mapRest!19662 () (Array (_ BitVec 32) ValueCell!5666))

(declare-fun mapKey!19662 () (_ BitVec 32))

(assert (=> mapNonEmpty!19662 (= (arr!13346 _values!549) (store mapRest!19662 mapKey!19662 mapValue!19662))))

(declare-fun b!449301 () Bool)

(declare-fun res!267336 () Bool)

(assert (=> b!449301 (=> (not res!267336) (not e!263444))))

(declare-fun lt!204338 () array!27805)

(assert (=> b!449301 (= res!267336 (arrayNoDuplicates!0 lt!204338 #b00000000000000000000000000000000 Nil!7992))))

(declare-fun res!267338 () Bool)

(assert (=> start!40678 (=> (not res!267338) (not e!263443))))

(assert (=> start!40678 (= res!267338 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13697 _keys!709))))))

(assert (=> start!40678 e!263443))

(declare-fun tp_is_empty!12019 () Bool)

(assert (=> start!40678 tp_is_empty!12019))

(assert (=> start!40678 tp!37862))

(assert (=> start!40678 true))

(declare-fun e!263441 () Bool)

(declare-fun array_inv!9656 (array!27807) Bool)

(assert (=> start!40678 (and (array_inv!9656 _values!549) e!263441)))

(declare-fun array_inv!9657 (array!27805) Bool)

(assert (=> start!40678 (array_inv!9657 _keys!709)))

(declare-fun b!449302 () Bool)

(declare-fun e!263440 () Bool)

(assert (=> b!449302 (= e!263440 tp_is_empty!12019)))

(declare-fun b!449303 () Bool)

(declare-fun res!267332 () Bool)

(assert (=> b!449303 (=> (not res!267332) (not e!263443))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!449303 (= res!267332 (validKeyInArray!0 k!794))))

(declare-fun b!449304 () Bool)

(assert (=> b!449304 (= e!263443 e!263444)))

(declare-fun res!267334 () Bool)

(assert (=> b!449304 (=> (not res!267334) (not e!263444))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27805 (_ BitVec 32)) Bool)

(assert (=> b!449304 (= res!267334 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204338 mask!1025))))

(assert (=> b!449304 (= lt!204338 (array!27806 (store (arr!13345 _keys!709) i!563 k!794) (size!13697 _keys!709)))))

(declare-fun b!449305 () Bool)

(declare-fun res!267337 () Bool)

(assert (=> b!449305 (=> (not res!267337) (not e!263443))))

(assert (=> b!449305 (= res!267337 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapIsEmpty!19662 () Bool)

(assert (=> mapIsEmpty!19662 mapRes!19662))

(declare-fun b!449306 () Bool)

(declare-fun res!267340 () Bool)

(assert (=> b!449306 (=> (not res!267340) (not e!263443))))

(declare-fun arrayContainsKey!0 (array!27805 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!449306 (= res!267340 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!449307 () Bool)

(assert (=> b!449307 (= e!263444 false)))

(declare-fun minValue!515 () V!17131)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!17131)

(declare-fun v!412 () V!17131)

(declare-datatypes ((tuple2!7884 0))(
  ( (tuple2!7885 (_1!3952 (_ BitVec 64)) (_2!3952 V!17131)) )
))
(declare-datatypes ((List!7996 0))(
  ( (Nil!7993) (Cons!7992 (h!8848 tuple2!7884) (t!13766 List!7996)) )
))
(declare-datatypes ((ListLongMap!6811 0))(
  ( (ListLongMap!6812 (toList!3421 List!7996)) )
))
(declare-fun lt!204339 () ListLongMap!6811)

(declare-fun getCurrentListMapNoExtraKeys!1601 (array!27805 array!27807 (_ BitVec 32) (_ BitVec 32) V!17131 V!17131 (_ BitVec 32) Int) ListLongMap!6811)

(assert (=> b!449307 (= lt!204339 (getCurrentListMapNoExtraKeys!1601 lt!204338 (array!27808 (store (arr!13346 _values!549) i!563 (ValueCellFull!5666 v!412)) (size!13698 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!204340 () ListLongMap!6811)

(assert (=> b!449307 (= lt!204340 (getCurrentListMapNoExtraKeys!1601 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!449308 () Bool)

(declare-fun res!267335 () Bool)

(assert (=> b!449308 (=> (not res!267335) (not e!263443))))

(assert (=> b!449308 (= res!267335 (and (= (size!13698 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13697 _keys!709) (size!13698 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!449309 () Bool)

(assert (=> b!449309 (= e!263442 tp_is_empty!12019)))

(declare-fun b!449310 () Bool)

(declare-fun res!267341 () Bool)

(assert (=> b!449310 (=> (not res!267341) (not e!263443))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!449310 (= res!267341 (validMask!0 mask!1025))))

(declare-fun b!449311 () Bool)

(assert (=> b!449311 (= e!263441 (and e!263440 mapRes!19662))))

(declare-fun condMapEmpty!19662 () Bool)

(declare-fun mapDefault!19662 () ValueCell!5666)

