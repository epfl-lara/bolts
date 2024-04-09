; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39616 () Bool)

(assert start!39616)

(declare-fun b_free!9875 () Bool)

(declare-fun b_next!9875 () Bool)

(assert (=> start!39616 (= b_free!9875 (not b_next!9875))))

(declare-fun tp!35154 () Bool)

(declare-fun b_and!17549 () Bool)

(assert (=> start!39616 (= tp!35154 b_and!17549)))

(declare-fun b!424239 () Bool)

(declare-fun res!248237 () Bool)

(declare-fun e!252031 () Bool)

(assert (=> b!424239 (=> (not res!248237) (not e!252031))))

(declare-datatypes ((array!25881 0))(
  ( (array!25882 (arr!12387 (Array (_ BitVec 32) (_ BitVec 64))) (size!12739 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25881)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15807 0))(
  ( (V!15808 (val!5558 Int)) )
))
(declare-datatypes ((ValueCell!5170 0))(
  ( (ValueCellFull!5170 (v!7801 V!15807)) (EmptyCell!5170) )
))
(declare-datatypes ((array!25883 0))(
  ( (array!25884 (arr!12388 (Array (_ BitVec 32) ValueCell!5170)) (size!12740 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25883)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!424239 (= res!248237 (and (= (size!12740 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12739 _keys!709) (size!12740 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!424240 () Bool)

(declare-fun res!248228 () Bool)

(assert (=> b!424240 (=> (not res!248228) (not e!252031))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!424240 (= res!248228 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12739 _keys!709))))))

(declare-fun b!424241 () Bool)

(declare-fun res!248238 () Bool)

(assert (=> b!424241 (=> (not res!248238) (not e!252031))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!424241 (= res!248238 (validMask!0 mask!1025))))

(declare-fun b!424242 () Bool)

(declare-fun e!252027 () Bool)

(assert (=> b!424242 (= e!252027 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun minValue!515 () V!15807)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((tuple2!7230 0))(
  ( (tuple2!7231 (_1!3625 (_ BitVec 64)) (_2!3625 V!15807)) )
))
(declare-datatypes ((List!7277 0))(
  ( (Nil!7274) (Cons!7273 (h!8129 tuple2!7230) (t!12729 List!7277)) )
))
(declare-datatypes ((ListLongMap!6157 0))(
  ( (ListLongMap!6158 (toList!3094 List!7277)) )
))
(declare-fun lt!194329 () ListLongMap!6157)

(declare-fun lt!194331 () array!25881)

(declare-fun zeroValue!515 () V!15807)

(declare-fun v!412 () V!15807)

(declare-fun getCurrentListMapNoExtraKeys!1295 (array!25881 array!25883 (_ BitVec 32) (_ BitVec 32) V!15807 V!15807 (_ BitVec 32) Int) ListLongMap!6157)

(assert (=> b!424242 (= lt!194329 (getCurrentListMapNoExtraKeys!1295 lt!194331 (array!25884 (store (arr!12388 _values!549) i!563 (ValueCellFull!5170 v!412)) (size!12740 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!194330 () ListLongMap!6157)

(assert (=> b!424242 (= lt!194330 (getCurrentListMapNoExtraKeys!1295 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!424243 () Bool)

(declare-fun e!252029 () Bool)

(declare-fun e!252028 () Bool)

(declare-fun mapRes!18162 () Bool)

(assert (=> b!424243 (= e!252029 (and e!252028 mapRes!18162))))

(declare-fun condMapEmpty!18162 () Bool)

(declare-fun mapDefault!18162 () ValueCell!5170)

