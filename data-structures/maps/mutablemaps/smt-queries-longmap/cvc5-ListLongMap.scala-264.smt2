; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4328 () Bool)

(assert start!4328)

(declare-fun b_free!1171 () Bool)

(declare-fun b_next!1171 () Bool)

(assert (=> start!4328 (= b_free!1171 (not b_next!1171))))

(declare-fun tp!4942 () Bool)

(declare-fun b_and!1989 () Bool)

(assert (=> start!4328 (= tp!4942 b_and!1989)))

(declare-fun mapIsEmpty!1825 () Bool)

(declare-fun mapRes!1825 () Bool)

(assert (=> mapIsEmpty!1825 mapRes!1825))

(declare-fun b!33371 () Bool)

(declare-fun res!20262 () Bool)

(declare-fun e!21198 () Bool)

(assert (=> b!33371 (=> (not res!20262) (not e!21198))))

(declare-datatypes ((array!2257 0))(
  ( (array!2258 (arr!1079 (Array (_ BitVec 32) (_ BitVec 64))) (size!1180 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2257)

(declare-datatypes ((List!877 0))(
  ( (Nil!874) (Cons!873 (h!1440 (_ BitVec 64)) (t!3578 List!877)) )
))
(declare-fun arrayNoDuplicates!0 (array!2257 (_ BitVec 32) List!877) Bool)

(assert (=> b!33371 (= res!20262 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!874))))

(declare-fun b!33372 () Bool)

(declare-fun res!20267 () Bool)

(assert (=> b!33372 (=> (not res!20267) (not e!21198))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!33372 (= res!20267 (validKeyInArray!0 k!1304))))

(declare-fun res!20261 () Bool)

(assert (=> start!4328 (=> (not res!20261) (not e!21198))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4328 (= res!20261 (validMask!0 mask!2294))))

(assert (=> start!4328 e!21198))

(assert (=> start!4328 true))

(assert (=> start!4328 tp!4942))

(declare-datatypes ((V!1859 0))(
  ( (V!1860 (val!789 Int)) )
))
(declare-datatypes ((ValueCell!563 0))(
  ( (ValueCellFull!563 (v!1881 V!1859)) (EmptyCell!563) )
))
(declare-datatypes ((array!2259 0))(
  ( (array!2260 (arr!1080 (Array (_ BitVec 32) ValueCell!563)) (size!1181 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2259)

(declare-fun e!21194 () Bool)

(declare-fun array_inv!717 (array!2259) Bool)

(assert (=> start!4328 (and (array_inv!717 _values!1501) e!21194)))

(declare-fun array_inv!718 (array!2257) Bool)

(assert (=> start!4328 (array_inv!718 _keys!1833)))

(declare-fun tp_is_empty!1525 () Bool)

(assert (=> start!4328 tp_is_empty!1525))

(declare-fun b!33373 () Bool)

(declare-fun e!21195 () Bool)

(assert (=> b!33373 (= e!21195 tp_is_empty!1525)))

(declare-fun b!33374 () Bool)

(declare-fun res!20264 () Bool)

(declare-fun e!21193 () Bool)

(assert (=> b!33374 (=> (not res!20264) (not e!21193))))

(declare-fun arrayContainsKey!0 (array!2257 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!33374 (= res!20264 (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!33375 () Bool)

(declare-fun res!20265 () Bool)

(assert (=> b!33375 (=> (not res!20265) (not e!21198))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!33375 (= res!20265 (and (= (size!1181 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1180 _keys!1833) (size!1181 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!33376 () Bool)

(declare-fun e!21196 () Bool)

(assert (=> b!33376 (= e!21194 (and e!21196 mapRes!1825))))

(declare-fun condMapEmpty!1825 () Bool)

(declare-fun mapDefault!1825 () ValueCell!563)

