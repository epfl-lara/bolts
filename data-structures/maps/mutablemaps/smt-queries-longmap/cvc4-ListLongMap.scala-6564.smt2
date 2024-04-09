; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83300 () Bool)

(assert start!83300)

(declare-fun b_free!19265 () Bool)

(declare-fun b_next!19265 () Bool)

(assert (=> start!83300 (= b_free!19265 (not b_next!19265))))

(declare-fun tp!67075 () Bool)

(declare-fun b_and!30771 () Bool)

(assert (=> start!83300 (= tp!67075 b_and!30771)))

(declare-fun res!650469 () Bool)

(declare-fun e!547734 () Bool)

(assert (=> start!83300 (=> (not res!650469) (not e!547734))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83300 (= res!650469 (validMask!0 mask!2147))))

(assert (=> start!83300 e!547734))

(assert (=> start!83300 true))

(declare-datatypes ((V!34533 0))(
  ( (V!34534 (val!11132 Int)) )
))
(declare-datatypes ((ValueCell!10600 0))(
  ( (ValueCellFull!10600 (v!13691 V!34533)) (EmptyCell!10600) )
))
(declare-datatypes ((array!60357 0))(
  ( (array!60358 (arr!29038 (Array (_ BitVec 32) ValueCell!10600)) (size!29518 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60357)

(declare-fun e!547733 () Bool)

(declare-fun array_inv!22363 (array!60357) Bool)

(assert (=> start!83300 (and (array_inv!22363 _values!1425) e!547733)))

(declare-fun tp_is_empty!22163 () Bool)

(assert (=> start!83300 tp_is_empty!22163))

(assert (=> start!83300 tp!67075))

(declare-datatypes ((array!60359 0))(
  ( (array!60360 (arr!29039 (Array (_ BitVec 32) (_ BitVec 64))) (size!29519 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60359)

(declare-fun array_inv!22364 (array!60359) Bool)

(assert (=> start!83300 (array_inv!22364 _keys!1717)))

(declare-fun b!971629 () Bool)

(declare-fun res!650471 () Bool)

(assert (=> b!971629 (=> (not res!650471) (not e!547734))))

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!971629 (= res!650471 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29519 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29519 _keys!1717))))))

(declare-fun b!971630 () Bool)

(declare-fun e!547736 () Bool)

(declare-fun mapRes!35254 () Bool)

(assert (=> b!971630 (= e!547733 (and e!547736 mapRes!35254))))

(declare-fun condMapEmpty!35254 () Bool)

(declare-fun mapDefault!35254 () ValueCell!10600)

