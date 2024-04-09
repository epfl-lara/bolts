; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3846 () Bool)

(assert start!3846)

(declare-fun b_free!787 () Bool)

(declare-fun b_next!787 () Bool)

(assert (=> start!3846 (= b_free!787 (not b_next!787))))

(declare-fun tp!3775 () Bool)

(declare-fun b_and!1595 () Bool)

(assert (=> start!3846 (= tp!3775 b_and!1595)))

(declare-fun b!27016 () Bool)

(declare-fun res!15992 () Bool)

(declare-fun e!17620 () Bool)

(assert (=> b!27016 (=> (not res!15992) (not e!17620))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!27016 (= res!15992 (validKeyInArray!0 k!1304))))

(declare-fun res!15994 () Bool)

(assert (=> start!3846 (=> (not res!15994) (not e!17620))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3846 (= res!15994 (validMask!0 mask!2294))))

(assert (=> start!3846 e!17620))

(assert (=> start!3846 true))

(assert (=> start!3846 tp!3775))

(declare-datatypes ((V!1347 0))(
  ( (V!1348 (val!597 Int)) )
))
(declare-datatypes ((ValueCell!371 0))(
  ( (ValueCellFull!371 (v!1684 V!1347)) (EmptyCell!371) )
))
(declare-datatypes ((array!1513 0))(
  ( (array!1514 (arr!712 (Array (_ BitVec 32) ValueCell!371)) (size!813 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1513)

(declare-fun e!17619 () Bool)

(declare-fun array_inv!489 (array!1513) Bool)

(assert (=> start!3846 (and (array_inv!489 _values!1501) e!17619)))

(declare-datatypes ((array!1515 0))(
  ( (array!1516 (arr!713 (Array (_ BitVec 32) (_ BitVec 64))) (size!814 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1515)

(declare-fun array_inv!490 (array!1515) Bool)

(assert (=> start!3846 (array_inv!490 _keys!1833)))

(declare-fun tp_is_empty!1141 () Bool)

(assert (=> start!3846 tp_is_empty!1141))

(declare-fun b!27017 () Bool)

(declare-fun e!17617 () Bool)

(assert (=> b!27017 (= e!17617 tp_is_empty!1141)))

(declare-fun mapIsEmpty!1234 () Bool)

(declare-fun mapRes!1234 () Bool)

(assert (=> mapIsEmpty!1234 mapRes!1234))

(declare-fun b!27018 () Bool)

(assert (=> b!27018 (= e!17619 (and e!17617 mapRes!1234))))

(declare-fun condMapEmpty!1234 () Bool)

(declare-fun mapDefault!1234 () ValueCell!371)

