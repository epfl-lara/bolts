; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34342 () Bool)

(assert start!34342)

(declare-fun b_free!7309 () Bool)

(declare-fun b_next!7309 () Bool)

(assert (=> start!34342 (= b_free!7309 (not b_next!7309))))

(declare-fun tp!25466 () Bool)

(declare-fun b_and!14531 () Bool)

(assert (=> start!34342 (= tp!25466 b_and!14531)))

(declare-fun b!342600 () Bool)

(declare-fun res!189459 () Bool)

(declare-fun e!210093 () Bool)

(assert (=> b!342600 (=> (not res!189459) (not e!210093))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!10659 0))(
  ( (V!10660 (val!3675 Int)) )
))
(declare-datatypes ((ValueCell!3287 0))(
  ( (ValueCellFull!3287 (v!5845 V!10659)) (EmptyCell!3287) )
))
(declare-datatypes ((array!18089 0))(
  ( (array!18090 (arr!8560 (Array (_ BitVec 32) ValueCell!3287)) (size!8912 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18089)

(declare-datatypes ((array!18091 0))(
  ( (array!18092 (arr!8561 (Array (_ BitVec 32) (_ BitVec 64))) (size!8913 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18091)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!342600 (= res!189459 (and (= (size!8912 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8913 _keys!1895) (size!8912 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!342601 () Bool)

(declare-datatypes ((Unit!10686 0))(
  ( (Unit!10687) )
))
(declare-fun e!210099 () Unit!10686)

(declare-fun Unit!10688 () Unit!10686)

(assert (=> b!342601 (= e!210099 Unit!10688)))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun zeroValue!1467 () V!10659)

(declare-fun minValue!1467 () V!10659)

(declare-fun lt!162208 () Unit!10686)

(declare-fun defaultEntry!1528 () Int)

(declare-fun lemmaArrayContainsKeyThenInListMap!308 (array!18091 array!18089 (_ BitVec 32) (_ BitVec 32) V!10659 V!10659 (_ BitVec 64) (_ BitVec 32) Int) Unit!10686)

(declare-fun arrayScanForKey!0 (array!18091 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!342601 (= lt!162208 (lemmaArrayContainsKeyThenInListMap!308 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k!1348 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!342601 false))

(declare-fun b!342602 () Bool)

(declare-fun e!210098 () Bool)

(declare-fun tp_is_empty!7261 () Bool)

(assert (=> b!342602 (= e!210098 tp_is_empty!7261)))

(declare-fun b!342603 () Bool)

(declare-fun res!189460 () Bool)

(assert (=> b!342603 (=> (not res!189460) (not e!210093))))

(declare-datatypes ((List!4958 0))(
  ( (Nil!4955) (Cons!4954 (h!5810 (_ BitVec 64)) (t!10078 List!4958)) )
))
(declare-fun arrayNoDuplicates!0 (array!18091 (_ BitVec 32) List!4958) Bool)

(assert (=> b!342603 (= res!189460 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4955))))

(declare-fun b!342605 () Bool)

(declare-fun e!210097 () Bool)

(declare-fun e!210094 () Bool)

(declare-fun mapRes!12324 () Bool)

(assert (=> b!342605 (= e!210097 (and e!210094 mapRes!12324))))

(declare-fun condMapEmpty!12324 () Bool)

(declare-fun mapDefault!12324 () ValueCell!3287)

