; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95716 () Bool)

(assert start!95716)

(declare-fun b_free!22333 () Bool)

(declare-fun b_next!22333 () Bool)

(assert (=> start!95716 (= b_free!22333 (not b_next!22333))))

(declare-fun tp!78849 () Bool)

(declare-fun b_and!35359 () Bool)

(assert (=> start!95716 (= tp!78849 b_and!35359)))

(declare-fun b!1081489 () Bool)

(declare-fun res!720957 () Bool)

(declare-fun e!618190 () Bool)

(assert (=> b!1081489 (=> (not res!720957) (not e!618190))))

(declare-datatypes ((array!69574 0))(
  ( (array!69575 (arr!33457 (Array (_ BitVec 32) (_ BitVec 64))) (size!33994 (_ BitVec 32))) )
))
(declare-fun lt!479312 () array!69574)

(declare-datatypes ((List!23453 0))(
  ( (Nil!23450) (Cons!23449 (h!24658 (_ BitVec 64)) (t!32851 List!23453)) )
))
(declare-fun arrayNoDuplicates!0 (array!69574 (_ BitVec 32) List!23453) Bool)

(assert (=> b!1081489 (= res!720957 (arrayNoDuplicates!0 lt!479312 #b00000000000000000000000000000000 Nil!23450))))

(declare-fun b!1081490 () Bool)

(declare-fun e!618191 () Bool)

(assert (=> b!1081490 (= e!618191 e!618190)))

(declare-fun res!720953 () Bool)

(assert (=> b!1081490 (=> (not res!720953) (not e!618190))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69574 (_ BitVec 32)) Bool)

(assert (=> b!1081490 (= res!720953 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!479312 mask!1414))))

(declare-fun _keys!1070 () array!69574)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1081490 (= lt!479312 (array!69575 (store (arr!33457 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33994 _keys!1070)))))

(declare-fun mapIsEmpty!41257 () Bool)

(declare-fun mapRes!41257 () Bool)

(assert (=> mapIsEmpty!41257 mapRes!41257))

(declare-fun b!1081491 () Bool)

(declare-fun res!720955 () Bool)

(assert (=> b!1081491 (=> (not res!720955) (not e!618191))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1081491 (= res!720955 (validKeyInArray!0 k!904))))

(declare-fun b!1081492 () Bool)

(declare-fun e!618192 () Bool)

(declare-fun e!618189 () Bool)

(assert (=> b!1081492 (= e!618192 (and e!618189 mapRes!41257))))

(declare-fun condMapEmpty!41257 () Bool)

(declare-datatypes ((V!40241 0))(
  ( (V!40242 (val!13224 Int)) )
))
(declare-datatypes ((ValueCell!12458 0))(
  ( (ValueCellFull!12458 (v!15846 V!40241)) (EmptyCell!12458) )
))
(declare-datatypes ((array!69576 0))(
  ( (array!69577 (arr!33458 (Array (_ BitVec 32) ValueCell!12458)) (size!33995 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69576)

(declare-fun mapDefault!41257 () ValueCell!12458)

