; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39426 () Bool)

(assert start!39426)

(declare-fun b_free!9685 () Bool)

(declare-fun b_next!9685 () Bool)

(assert (=> start!39426 (= b_free!9685 (not b_next!9685))))

(declare-fun tp!34584 () Bool)

(declare-fun b_and!17263 () Bool)

(assert (=> start!39426 (= tp!34584 b_and!17263)))

(declare-datatypes ((V!15555 0))(
  ( (V!15556 (val!5463 Int)) )
))
(declare-fun minValue!515 () V!15555)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((tuple2!7080 0))(
  ( (tuple2!7081 (_1!3550 (_ BitVec 64)) (_2!3550 V!15555)) )
))
(declare-datatypes ((List!7125 0))(
  ( (Nil!7122) (Cons!7121 (h!7977 tuple2!7080) (t!12483 List!7125)) )
))
(declare-datatypes ((ListLongMap!6007 0))(
  ( (ListLongMap!6008 (toList!3019 List!7125)) )
))
(declare-fun call!29231 () ListLongMap!6007)

(declare-datatypes ((ValueCell!5075 0))(
  ( (ValueCellFull!5075 (v!7706 V!15555)) (EmptyCell!5075) )
))
(declare-datatypes ((array!25505 0))(
  ( (array!25506 (arr!12199 (Array (_ BitVec 32) ValueCell!5075)) (size!12551 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25505)

(declare-fun lt!192339 () array!25505)

(declare-fun zeroValue!515 () V!15555)

(declare-fun bm!29227 () Bool)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((array!25507 0))(
  ( (array!25508 (arr!12200 (Array (_ BitVec 32) (_ BitVec 64))) (size!12552 (_ BitVec 32))) )
))
(declare-fun lt!192347 () array!25507)

(declare-fun _keys!709 () array!25507)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun c!55166 () Bool)

(declare-fun defaultEntry!557 () Int)

(declare-fun getCurrentListMapNoExtraKeys!1220 (array!25507 array!25505 (_ BitVec 32) (_ BitVec 32) V!15555 V!15555 (_ BitVec 32) Int) ListLongMap!6007)

(assert (=> bm!29227 (= call!29231 (getCurrentListMapNoExtraKeys!1220 (ite c!55166 lt!192347 _keys!709) (ite c!55166 lt!192339 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!419300 () Bool)

(declare-fun res!244533 () Bool)

(declare-fun e!249896 () Bool)

(assert (=> b!419300 (=> (not res!244533) (not e!249896))))

(assert (=> b!419300 (= res!244533 (and (= (size!12551 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12552 _keys!709) (size!12551 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!17877 () Bool)

(declare-fun mapRes!17877 () Bool)

(assert (=> mapIsEmpty!17877 mapRes!17877))

(declare-fun b!419301 () Bool)

(declare-fun res!244530 () Bool)

(assert (=> b!419301 (=> (not res!244530) (not e!249896))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!419301 (= res!244530 (validKeyInArray!0 k!794))))

(declare-fun b!419302 () Bool)

(declare-fun res!244528 () Bool)

(assert (=> b!419302 (=> (not res!244528) (not e!249896))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!419302 (= res!244528 (or (= (select (arr!12200 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12200 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!419303 () Bool)

(declare-fun res!244536 () Bool)

(assert (=> b!419303 (=> (not res!244536) (not e!249896))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!419303 (= res!244536 (validMask!0 mask!1025))))

(declare-fun b!419304 () Bool)

(declare-fun res!244525 () Bool)

(assert (=> b!419304 (=> (not res!244525) (not e!249896))))

(declare-datatypes ((List!7126 0))(
  ( (Nil!7123) (Cons!7122 (h!7978 (_ BitVec 64)) (t!12484 List!7126)) )
))
(declare-fun arrayNoDuplicates!0 (array!25507 (_ BitVec 32) List!7126) Bool)

(assert (=> b!419304 (= res!244525 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7123))))

(declare-fun b!419305 () Bool)

(declare-fun e!249894 () Bool)

(declare-fun e!249898 () Bool)

(assert (=> b!419305 (= e!249894 (and e!249898 mapRes!17877))))

(declare-fun condMapEmpty!17877 () Bool)

(declare-fun mapDefault!17877 () ValueCell!5075)

