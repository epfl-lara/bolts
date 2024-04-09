; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95458 () Bool)

(assert start!95458)

(declare-fun b!1077700 () Bool)

(declare-fun res!718183 () Bool)

(declare-fun e!616258 () Bool)

(assert (=> b!1077700 (=> (not res!718183) (not e!616258))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!69180 0))(
  ( (array!69181 (arr!33264 (Array (_ BitVec 32) (_ BitVec 64))) (size!33801 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69180)

(declare-datatypes ((V!39973 0))(
  ( (V!39974 (val!13124 Int)) )
))
(declare-datatypes ((ValueCell!12358 0))(
  ( (ValueCellFull!12358 (v!15745 V!39973)) (EmptyCell!12358) )
))
(declare-datatypes ((array!69182 0))(
  ( (array!69183 (arr!33265 (Array (_ BitVec 32) ValueCell!12358)) (size!33802 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69182)

(assert (=> b!1077700 (= res!718183 (and (= (size!33802 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33801 _keys!1070) (size!33802 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1077701 () Bool)

(assert (=> b!1077701 (= e!616258 (bvsgt #b00000000000000000000000000000000 (size!33801 _keys!1070)))))

(declare-fun b!1077702 () Bool)

(declare-fun e!616261 () Bool)

(declare-fun tp_is_empty!26135 () Bool)

(assert (=> b!1077702 (= e!616261 tp_is_empty!26135)))

(declare-fun b!1077703 () Bool)

(declare-fun res!718185 () Bool)

(assert (=> b!1077703 (=> (not res!718185) (not e!616258))))

(declare-datatypes ((List!23342 0))(
  ( (Nil!23339) (Cons!23338 (h!24547 (_ BitVec 64)) (t!32708 List!23342)) )
))
(declare-fun arrayNoDuplicates!0 (array!69180 (_ BitVec 32) List!23342) Bool)

(assert (=> b!1077703 (= res!718185 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23339))))

(declare-fun mapNonEmpty!40945 () Bool)

(declare-fun mapRes!40945 () Bool)

(declare-fun tp!78408 () Bool)

(assert (=> mapNonEmpty!40945 (= mapRes!40945 (and tp!78408 e!616261))))

(declare-fun mapRest!40945 () (Array (_ BitVec 32) ValueCell!12358))

(declare-fun mapValue!40945 () ValueCell!12358)

(declare-fun mapKey!40945 () (_ BitVec 32))

(assert (=> mapNonEmpty!40945 (= (arr!33265 _values!874) (store mapRest!40945 mapKey!40945 mapValue!40945))))

(declare-fun b!1077704 () Bool)

(declare-fun res!718189 () Bool)

(assert (=> b!1077704 (=> (not res!718189) (not e!616258))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1077704 (= res!718189 (validKeyInArray!0 k!904))))

(declare-fun b!1077705 () Bool)

(declare-fun res!718184 () Bool)

(assert (=> b!1077705 (=> (not res!718184) (not e!616258))))

(declare-fun i!650 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69180 (_ BitVec 32)) Bool)

(assert (=> b!1077705 (= res!718184 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!69181 (store (arr!33264 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33801 _keys!1070)) mask!1414))))

(declare-fun b!1077706 () Bool)

(declare-fun res!718187 () Bool)

(assert (=> b!1077706 (=> (not res!718187) (not e!616258))))

(assert (=> b!1077706 (= res!718187 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33801 _keys!1070))))))

(declare-fun b!1077707 () Bool)

(declare-fun res!718182 () Bool)

(assert (=> b!1077707 (=> (not res!718182) (not e!616258))))

(assert (=> b!1077707 (= res!718182 (= (select (arr!33264 _keys!1070) i!650) k!904))))

(declare-fun b!1077708 () Bool)

(declare-fun res!718188 () Bool)

(assert (=> b!1077708 (=> (not res!718188) (not e!616258))))

(assert (=> b!1077708 (= res!718188 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1077709 () Bool)

(declare-fun e!616257 () Bool)

(assert (=> b!1077709 (= e!616257 tp_is_empty!26135)))

(declare-fun res!718186 () Bool)

(assert (=> start!95458 (=> (not res!718186) (not e!616258))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95458 (= res!718186 (validMask!0 mask!1414))))

(assert (=> start!95458 e!616258))

(assert (=> start!95458 true))

(declare-fun array_inv!25564 (array!69180) Bool)

(assert (=> start!95458 (array_inv!25564 _keys!1070)))

(declare-fun e!616259 () Bool)

(declare-fun array_inv!25565 (array!69182) Bool)

(assert (=> start!95458 (and (array_inv!25565 _values!874) e!616259)))

(declare-fun mapIsEmpty!40945 () Bool)

(assert (=> mapIsEmpty!40945 mapRes!40945))

(declare-fun b!1077710 () Bool)

(assert (=> b!1077710 (= e!616259 (and e!616257 mapRes!40945))))

(declare-fun condMapEmpty!40945 () Bool)

(declare-fun mapDefault!40945 () ValueCell!12358)

