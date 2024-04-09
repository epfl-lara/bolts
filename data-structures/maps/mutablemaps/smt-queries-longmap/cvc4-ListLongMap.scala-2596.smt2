; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39406 () Bool)

(assert start!39406)

(declare-fun b_free!9665 () Bool)

(declare-fun b_next!9665 () Bool)

(assert (=> start!39406 (= b_free!9665 (not b_next!9665))))

(declare-fun tp!34523 () Bool)

(declare-fun b_and!17223 () Bool)

(assert (=> start!39406 (= tp!34523 b_and!17223)))

(declare-fun b!418710 () Bool)

(declare-fun res!244112 () Bool)

(declare-fun e!249624 () Bool)

(assert (=> b!418710 (=> (not res!244112) (not e!249624))))

(declare-datatypes ((array!25465 0))(
  ( (array!25466 (arr!12179 (Array (_ BitVec 32) (_ BitVec 64))) (size!12531 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25465)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15527 0))(
  ( (V!15528 (val!5453 Int)) )
))
(declare-datatypes ((ValueCell!5065 0))(
  ( (ValueCellFull!5065 (v!7696 V!15527)) (EmptyCell!5065) )
))
(declare-datatypes ((array!25467 0))(
  ( (array!25468 (arr!12180 (Array (_ BitVec 32) ValueCell!5065)) (size!12532 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25467)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!418710 (= res!244112 (and (= (size!12532 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12531 _keys!709) (size!12532 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!17847 () Bool)

(declare-fun mapRes!17847 () Bool)

(assert (=> mapIsEmpty!17847 mapRes!17847))

(declare-fun b!418711 () Bool)

(declare-fun res!244104 () Bool)

(assert (=> b!418711 (=> (not res!244104) (not e!249624))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!418711 (= res!244104 (or (= (select (arr!12179 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12179 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!418712 () Bool)

(declare-fun e!249627 () Bool)

(declare-fun e!249626 () Bool)

(assert (=> b!418712 (= e!249627 e!249626)))

(declare-fun res!244111 () Bool)

(assert (=> b!418712 (=> (not res!244111) (not e!249626))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!418712 (= res!244111 (= from!863 i!563))))

(declare-fun lt!192011 () array!25467)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!15527)

(declare-datatypes ((tuple2!7060 0))(
  ( (tuple2!7061 (_1!3540 (_ BitVec 64)) (_2!3540 V!15527)) )
))
(declare-datatypes ((List!7109 0))(
  ( (Nil!7106) (Cons!7105 (h!7961 tuple2!7060) (t!12447 List!7109)) )
))
(declare-datatypes ((ListLongMap!5987 0))(
  ( (ListLongMap!5988 (toList!3009 List!7109)) )
))
(declare-fun lt!192009 () ListLongMap!5987)

(declare-fun minValue!515 () V!15527)

(declare-fun lt!192018 () array!25465)

(declare-fun getCurrentListMapNoExtraKeys!1212 (array!25465 array!25467 (_ BitVec 32) (_ BitVec 32) V!15527 V!15527 (_ BitVec 32) Int) ListLongMap!5987)

(assert (=> b!418712 (= lt!192009 (getCurrentListMapNoExtraKeys!1212 lt!192018 lt!192011 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!15527)

(assert (=> b!418712 (= lt!192011 (array!25468 (store (arr!12180 _values!549) i!563 (ValueCellFull!5065 v!412)) (size!12532 _values!549)))))

(declare-fun lt!192013 () ListLongMap!5987)

(assert (=> b!418712 (= lt!192013 (getCurrentListMapNoExtraKeys!1212 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun call!29171 () ListLongMap!5987)

(declare-fun e!249620 () Bool)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun call!29170 () ListLongMap!5987)

(declare-fun b!418713 () Bool)

(declare-fun +!1216 (ListLongMap!5987 tuple2!7060) ListLongMap!5987)

(assert (=> b!418713 (= e!249620 (= call!29171 (+!1216 call!29170 (tuple2!7061 k!794 v!412))))))

(declare-fun b!418714 () Bool)

(assert (=> b!418714 (= e!249624 e!249627)))

(declare-fun res!244107 () Bool)

(assert (=> b!418714 (=> (not res!244107) (not e!249627))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25465 (_ BitVec 32)) Bool)

(assert (=> b!418714 (= res!244107 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!192018 mask!1025))))

(assert (=> b!418714 (= lt!192018 (array!25466 (store (arr!12179 _keys!709) i!563 k!794) (size!12531 _keys!709)))))

(declare-fun b!418715 () Bool)

(declare-fun e!249625 () Bool)

(assert (=> b!418715 (= e!249626 (not e!249625))))

(declare-fun res!244109 () Bool)

(assert (=> b!418715 (=> res!244109 e!249625)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!418715 (= res!244109 (validKeyInArray!0 (select (arr!12179 _keys!709) from!863)))))

(assert (=> b!418715 e!249620))

(declare-fun c!55136 () Bool)

(assert (=> b!418715 (= c!55136 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12335 0))(
  ( (Unit!12336) )
))
(declare-fun lt!192010 () Unit!12335)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!425 (array!25465 array!25467 (_ BitVec 32) (_ BitVec 32) V!15527 V!15527 (_ BitVec 32) (_ BitVec 64) V!15527 (_ BitVec 32) Int) Unit!12335)

(assert (=> b!418715 (= lt!192010 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!425 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!418716 () Bool)

(declare-fun e!249622 () Bool)

(declare-fun e!249623 () Bool)

(assert (=> b!418716 (= e!249622 (and e!249623 mapRes!17847))))

(declare-fun condMapEmpty!17847 () Bool)

(declare-fun mapDefault!17847 () ValueCell!5065)

