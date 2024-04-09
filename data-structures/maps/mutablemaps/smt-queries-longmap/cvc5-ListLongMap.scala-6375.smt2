; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82014 () Bool)

(assert start!82014)

(declare-fun b!956107 () Bool)

(declare-fun e!538744 () Bool)

(declare-fun tp_is_empty!21025 () Bool)

(assert (=> b!956107 (= e!538744 tp_is_empty!21025)))

(declare-fun mapNonEmpty!33499 () Bool)

(declare-fun mapRes!33499 () Bool)

(declare-fun tp!64078 () Bool)

(assert (=> mapNonEmpty!33499 (= mapRes!33499 (and tp!64078 e!538744))))

(declare-fun mapKey!33499 () (_ BitVec 32))

(declare-datatypes ((V!33017 0))(
  ( (V!33018 (val!10563 Int)) )
))
(declare-datatypes ((ValueCell!10031 0))(
  ( (ValueCellFull!10031 (v!13118 V!33017)) (EmptyCell!10031) )
))
(declare-fun mapRest!33499 () (Array (_ BitVec 32) ValueCell!10031))

(declare-datatypes ((array!58171 0))(
  ( (array!58172 (arr!27961 (Array (_ BitVec 32) ValueCell!10031)) (size!28441 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58171)

(declare-fun mapValue!33499 () ValueCell!10031)

(assert (=> mapNonEmpty!33499 (= (arr!27961 _values!1197) (store mapRest!33499 mapKey!33499 mapValue!33499))))

(declare-fun b!956108 () Bool)

(declare-fun res!640322 () Bool)

(declare-fun e!538746 () Bool)

(assert (=> b!956108 (=> (not res!640322) (not e!538746))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-datatypes ((array!58173 0))(
  ( (array!58174 (arr!27962 (Array (_ BitVec 32) (_ BitVec 64))) (size!28442 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58173)

(declare-fun mask!1823 () (_ BitVec 32))

(assert (=> b!956108 (= res!640322 (and (= (size!28441 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28442 _keys!1441) (size!28441 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!956109 () Bool)

(declare-fun res!640323 () Bool)

(assert (=> b!956109 (=> (not res!640323) (not e!538746))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58173 (_ BitVec 32)) Bool)

(assert (=> b!956109 (= res!640323 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!956111 () Bool)

(assert (=> b!956111 (= e!538746 false)))

(declare-fun lt!430060 () Bool)

(declare-datatypes ((List!19619 0))(
  ( (Nil!19616) (Cons!19615 (h!20777 (_ BitVec 64)) (t!27988 List!19619)) )
))
(declare-fun arrayNoDuplicates!0 (array!58173 (_ BitVec 32) List!19619) Bool)

(assert (=> b!956111 (= lt!430060 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19616))))

(declare-fun b!956112 () Bool)

(declare-fun e!538745 () Bool)

(declare-fun e!538743 () Bool)

(assert (=> b!956112 (= e!538745 (and e!538743 mapRes!33499))))

(declare-fun condMapEmpty!33499 () Bool)

(declare-fun mapDefault!33499 () ValueCell!10031)

