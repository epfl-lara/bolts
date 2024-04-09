; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95456 () Bool)

(assert start!95456)

(declare-fun b!1077667 () Bool)

(declare-fun res!718163 () Bool)

(declare-fun e!616245 () Bool)

(assert (=> b!1077667 (=> (not res!718163) (not e!616245))))

(declare-datatypes ((array!69176 0))(
  ( (array!69177 (arr!33262 (Array (_ BitVec 32) (_ BitVec 64))) (size!33799 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69176)

(declare-datatypes ((List!23341 0))(
  ( (Nil!23338) (Cons!23337 (h!24546 (_ BitVec 64)) (t!32707 List!23341)) )
))
(declare-fun arrayNoDuplicates!0 (array!69176 (_ BitVec 32) List!23341) Bool)

(assert (=> b!1077667 (= res!718163 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23338))))

(declare-fun b!1077668 () Bool)

(declare-fun e!616243 () Bool)

(declare-fun tp_is_empty!26133 () Bool)

(assert (=> b!1077668 (= e!616243 tp_is_empty!26133)))

(declare-fun b!1077669 () Bool)

(declare-fun res!718165 () Bool)

(assert (=> b!1077669 (=> (not res!718165) (not e!616245))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1077669 (= res!718165 (= (select (arr!33262 _keys!1070) i!650) k0!904))))

(declare-fun b!1077670 () Bool)

(declare-fun res!718158 () Bool)

(assert (=> b!1077670 (=> (not res!718158) (not e!616245))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!39971 0))(
  ( (V!39972 (val!13123 Int)) )
))
(declare-datatypes ((ValueCell!12357 0))(
  ( (ValueCellFull!12357 (v!15744 V!39971)) (EmptyCell!12357) )
))
(declare-datatypes ((array!69178 0))(
  ( (array!69179 (arr!33263 (Array (_ BitVec 32) ValueCell!12357)) (size!33800 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69178)

(assert (=> b!1077670 (= res!718158 (and (= (size!33800 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33799 _keys!1070) (size!33800 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1077671 () Bool)

(declare-fun res!718159 () Bool)

(assert (=> b!1077671 (=> (not res!718159) (not e!616245))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1077671 (= res!718159 (validKeyInArray!0 k0!904))))

(declare-fun b!1077672 () Bool)

(declare-fun e!616246 () Bool)

(assert (=> b!1077672 (= e!616246 tp_is_empty!26133)))

(declare-fun b!1077673 () Bool)

(assert (=> b!1077673 (= e!616245 (bvsgt #b00000000000000000000000000000000 (size!33799 _keys!1070)))))

(declare-fun mapNonEmpty!40942 () Bool)

(declare-fun mapRes!40942 () Bool)

(declare-fun tp!78405 () Bool)

(assert (=> mapNonEmpty!40942 (= mapRes!40942 (and tp!78405 e!616243))))

(declare-fun mapValue!40942 () ValueCell!12357)

(declare-fun mapKey!40942 () (_ BitVec 32))

(declare-fun mapRest!40942 () (Array (_ BitVec 32) ValueCell!12357))

(assert (=> mapNonEmpty!40942 (= (arr!33263 _values!874) (store mapRest!40942 mapKey!40942 mapValue!40942))))

(declare-fun b!1077674 () Bool)

(declare-fun e!616244 () Bool)

(assert (=> b!1077674 (= e!616244 (and e!616246 mapRes!40942))))

(declare-fun condMapEmpty!40942 () Bool)

(declare-fun mapDefault!40942 () ValueCell!12357)

(assert (=> b!1077674 (= condMapEmpty!40942 (= (arr!33263 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12357)) mapDefault!40942)))))

(declare-fun b!1077675 () Bool)

(declare-fun res!718160 () Bool)

(assert (=> b!1077675 (=> (not res!718160) (not e!616245))))

(assert (=> b!1077675 (= res!718160 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33799 _keys!1070))))))

(declare-fun res!718161 () Bool)

(assert (=> start!95456 (=> (not res!718161) (not e!616245))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95456 (= res!718161 (validMask!0 mask!1414))))

(assert (=> start!95456 e!616245))

(assert (=> start!95456 true))

(declare-fun array_inv!25562 (array!69176) Bool)

(assert (=> start!95456 (array_inv!25562 _keys!1070)))

(declare-fun array_inv!25563 (array!69178) Bool)

(assert (=> start!95456 (and (array_inv!25563 _values!874) e!616244)))

(declare-fun mapIsEmpty!40942 () Bool)

(assert (=> mapIsEmpty!40942 mapRes!40942))

(declare-fun b!1077676 () Bool)

(declare-fun res!718162 () Bool)

(assert (=> b!1077676 (=> (not res!718162) (not e!616245))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69176 (_ BitVec 32)) Bool)

(assert (=> b!1077676 (= res!718162 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1077677 () Bool)

(declare-fun res!718164 () Bool)

(assert (=> b!1077677 (=> (not res!718164) (not e!616245))))

(assert (=> b!1077677 (= res!718164 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!69177 (store (arr!33262 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33799 _keys!1070)) mask!1414))))

(assert (= (and start!95456 res!718161) b!1077670))

(assert (= (and b!1077670 res!718158) b!1077676))

(assert (= (and b!1077676 res!718162) b!1077667))

(assert (= (and b!1077667 res!718163) b!1077675))

(assert (= (and b!1077675 res!718160) b!1077671))

(assert (= (and b!1077671 res!718159) b!1077669))

(assert (= (and b!1077669 res!718165) b!1077677))

(assert (= (and b!1077677 res!718164) b!1077673))

(assert (= (and b!1077674 condMapEmpty!40942) mapIsEmpty!40942))

(assert (= (and b!1077674 (not condMapEmpty!40942)) mapNonEmpty!40942))

(get-info :version)

(assert (= (and mapNonEmpty!40942 ((_ is ValueCellFull!12357) mapValue!40942)) b!1077668))

(assert (= (and b!1077674 ((_ is ValueCellFull!12357) mapDefault!40942)) b!1077672))

(assert (= start!95456 b!1077674))

(declare-fun m!996549 () Bool)

(assert (=> b!1077669 m!996549))

(declare-fun m!996551 () Bool)

(assert (=> b!1077677 m!996551))

(declare-fun m!996553 () Bool)

(assert (=> b!1077677 m!996553))

(declare-fun m!996555 () Bool)

(assert (=> mapNonEmpty!40942 m!996555))

(declare-fun m!996557 () Bool)

(assert (=> b!1077676 m!996557))

(declare-fun m!996559 () Bool)

(assert (=> start!95456 m!996559))

(declare-fun m!996561 () Bool)

(assert (=> start!95456 m!996561))

(declare-fun m!996563 () Bool)

(assert (=> start!95456 m!996563))

(declare-fun m!996565 () Bool)

(assert (=> b!1077671 m!996565))

(declare-fun m!996567 () Bool)

(assert (=> b!1077667 m!996567))

(check-sat (not start!95456) (not b!1077667) tp_is_empty!26133 (not b!1077677) (not mapNonEmpty!40942) (not b!1077676) (not b!1077671))
(check-sat)
