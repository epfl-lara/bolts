; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100180 () Bool)

(assert start!100180)

(declare-fun b!1194284 () Bool)

(declare-fun res!794703 () Bool)

(declare-fun e!678766 () Bool)

(assert (=> b!1194284 (=> (not res!794703) (not e!678766))))

(declare-datatypes ((array!77268 0))(
  ( (array!77269 (arr!37280 (Array (_ BitVec 32) (_ BitVec 64))) (size!37817 (_ BitVec 32))) )
))
(declare-fun lt!542706 () array!77268)

(declare-datatypes ((List!26419 0))(
  ( (Nil!26416) (Cons!26415 (h!27624 (_ BitVec 64)) (t!39097 List!26419)) )
))
(declare-fun arrayNoDuplicates!0 (array!77268 (_ BitVec 32) List!26419) Bool)

(assert (=> b!1194284 (= res!794703 (arrayNoDuplicates!0 lt!542706 #b00000000000000000000000000000000 Nil!26416))))

(declare-fun b!1194285 () Bool)

(declare-fun res!794709 () Bool)

(declare-fun e!678764 () Bool)

(assert (=> b!1194285 (=> (not res!794709) (not e!678764))))

(declare-fun _keys!1208 () array!77268)

(assert (=> b!1194285 (= res!794709 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26416))))

(declare-fun b!1194286 () Bool)

(declare-fun e!678761 () Bool)

(declare-fun tp_is_empty!30253 () Bool)

(assert (=> b!1194286 (= e!678761 tp_is_empty!30253)))

(declare-fun b!1194287 () Bool)

(declare-fun res!794708 () Bool)

(assert (=> b!1194287 (=> (not res!794708) (not e!678764))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1194287 (= res!794708 (= (select (arr!37280 _keys!1208) i!673) k!934))))

(declare-fun b!1194288 () Bool)

(declare-fun e!678765 () Bool)

(declare-fun e!678763 () Bool)

(declare-fun mapRes!47207 () Bool)

(assert (=> b!1194288 (= e!678765 (and e!678763 mapRes!47207))))

(declare-fun condMapEmpty!47207 () Bool)

(declare-datatypes ((V!45465 0))(
  ( (V!45466 (val!15183 Int)) )
))
(declare-datatypes ((ValueCell!14417 0))(
  ( (ValueCellFull!14417 (v!17822 V!45465)) (EmptyCell!14417) )
))
(declare-datatypes ((array!77270 0))(
  ( (array!77271 (arr!37281 (Array (_ BitVec 32) ValueCell!14417)) (size!37818 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77270)

(declare-fun mapDefault!47207 () ValueCell!14417)

