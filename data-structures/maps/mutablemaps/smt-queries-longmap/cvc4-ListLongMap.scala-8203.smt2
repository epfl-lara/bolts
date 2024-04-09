; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100124 () Bool)

(assert start!100124)

(declare-fun b_free!25667 () Bool)

(declare-fun b_next!25667 () Bool)

(assert (=> start!100124 (= b_free!25667 (not b_next!25667))))

(declare-fun tp!89715 () Bool)

(declare-fun b_and!42215 () Bool)

(assert (=> start!100124 (= tp!89715 b_and!42215)))

(declare-fun b!1193284 () Bool)

(declare-fun e!678250 () Bool)

(declare-fun tp_is_empty!30197 () Bool)

(assert (=> b!1193284 (= e!678250 tp_is_empty!30197)))

(declare-fun b!1193285 () Bool)

(declare-fun res!793992 () Bool)

(declare-fun e!678248 () Bool)

(assert (=> b!1193285 (=> (not res!793992) (not e!678248))))

(declare-datatypes ((array!77158 0))(
  ( (array!77159 (arr!37225 (Array (_ BitVec 32) (_ BitVec 64))) (size!37762 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77158)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1193285 (= res!793992 (= (select (arr!37225 _keys!1208) i!673) k!934))))

(declare-fun b!1193286 () Bool)

(declare-fun res!793985 () Bool)

(assert (=> b!1193286 (=> (not res!793985) (not e!678248))))

(declare-datatypes ((List!26390 0))(
  ( (Nil!26387) (Cons!26386 (h!27595 (_ BitVec 64)) (t!39056 List!26390)) )
))
(declare-fun arrayNoDuplicates!0 (array!77158 (_ BitVec 32) List!26390) Bool)

(assert (=> b!1193286 (= res!793985 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26387))))

(declare-fun b!1193287 () Bool)

(declare-fun e!678253 () Bool)

(assert (=> b!1193287 (= e!678248 e!678253)))

(declare-fun res!793989 () Bool)

(assert (=> b!1193287 (=> (not res!793989) (not e!678253))))

(declare-fun lt!542513 () array!77158)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77158 (_ BitVec 32)) Bool)

(assert (=> b!1193287 (= res!793989 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542513 mask!1564))))

(assert (=> b!1193287 (= lt!542513 (array!77159 (store (arr!37225 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37762 _keys!1208)))))

(declare-fun b!1193288 () Bool)

(declare-fun e!678249 () Bool)

(declare-fun e!678247 () Bool)

(declare-fun mapRes!47123 () Bool)

(assert (=> b!1193288 (= e!678249 (and e!678247 mapRes!47123))))

(declare-fun condMapEmpty!47123 () Bool)

(declare-datatypes ((V!45389 0))(
  ( (V!45390 (val!15155 Int)) )
))
(declare-datatypes ((ValueCell!14389 0))(
  ( (ValueCellFull!14389 (v!17794 V!45389)) (EmptyCell!14389) )
))
(declare-datatypes ((array!77160 0))(
  ( (array!77161 (arr!37226 (Array (_ BitVec 32) ValueCell!14389)) (size!37763 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77160)

(declare-fun mapDefault!47123 () ValueCell!14389)

