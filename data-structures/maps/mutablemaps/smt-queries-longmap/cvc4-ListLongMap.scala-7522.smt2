; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95434 () Bool)

(assert start!95434)

(declare-fun b!1077390 () Bool)

(declare-fun res!717980 () Bool)

(declare-fun e!616081 () Bool)

(assert (=> b!1077390 (=> (not res!717980) (not e!616081))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!69132 0))(
  ( (array!69133 (arr!33240 (Array (_ BitVec 32) (_ BitVec 64))) (size!33777 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69132)

(declare-datatypes ((V!39941 0))(
  ( (V!39942 (val!13112 Int)) )
))
(declare-datatypes ((ValueCell!12346 0))(
  ( (ValueCellFull!12346 (v!15733 V!39941)) (EmptyCell!12346) )
))
(declare-datatypes ((array!69134 0))(
  ( (array!69135 (arr!33241 (Array (_ BitVec 32) ValueCell!12346)) (size!33778 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69134)

(assert (=> b!1077390 (= res!717980 (and (= (size!33778 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33777 _keys!1070) (size!33778 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1077391 () Bool)

(assert (=> b!1077391 (= e!616081 false)))

(declare-fun lt!478525 () Bool)

(declare-datatypes ((List!23333 0))(
  ( (Nil!23330) (Cons!23329 (h!24538 (_ BitVec 64)) (t!32699 List!23333)) )
))
(declare-fun arrayNoDuplicates!0 (array!69132 (_ BitVec 32) List!23333) Bool)

(assert (=> b!1077391 (= lt!478525 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23330))))

(declare-fun mapIsEmpty!40909 () Bool)

(declare-fun mapRes!40909 () Bool)

(assert (=> mapIsEmpty!40909 mapRes!40909))

(declare-fun res!717981 () Bool)

(assert (=> start!95434 (=> (not res!717981) (not e!616081))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95434 (= res!717981 (validMask!0 mask!1414))))

(assert (=> start!95434 e!616081))

(assert (=> start!95434 true))

(declare-fun e!616077 () Bool)

(declare-fun array_inv!25542 (array!69134) Bool)

(assert (=> start!95434 (and (array_inv!25542 _values!874) e!616077)))

(declare-fun array_inv!25543 (array!69132) Bool)

(assert (=> start!95434 (array_inv!25543 _keys!1070)))

(declare-fun b!1077392 () Bool)

(declare-fun e!616079 () Bool)

(declare-fun tp_is_empty!26111 () Bool)

(assert (=> b!1077392 (= e!616079 tp_is_empty!26111)))

(declare-fun b!1077393 () Bool)

(declare-fun e!616078 () Bool)

(assert (=> b!1077393 (= e!616078 tp_is_empty!26111)))

(declare-fun b!1077394 () Bool)

(assert (=> b!1077394 (= e!616077 (and e!616079 mapRes!40909))))

(declare-fun condMapEmpty!40909 () Bool)

(declare-fun mapDefault!40909 () ValueCell!12346)

