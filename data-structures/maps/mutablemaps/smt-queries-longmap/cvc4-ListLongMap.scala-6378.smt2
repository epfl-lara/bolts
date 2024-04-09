; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82036 () Bool)

(assert start!82036)

(declare-fun res!640421 () Bool)

(declare-fun e!538907 () Bool)

(assert (=> start!82036 (=> (not res!640421) (not e!538907))))

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82036 (= res!640421 (validMask!0 mask!1823))))

(assert (=> start!82036 e!538907))

(assert (=> start!82036 true))

(declare-datatypes ((V!33045 0))(
  ( (V!33046 (val!10574 Int)) )
))
(declare-datatypes ((ValueCell!10042 0))(
  ( (ValueCellFull!10042 (v!13129 V!33045)) (EmptyCell!10042) )
))
(declare-datatypes ((array!58213 0))(
  ( (array!58214 (arr!27982 (Array (_ BitVec 32) ValueCell!10042)) (size!28462 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58213)

(declare-fun e!538908 () Bool)

(declare-fun array_inv!21653 (array!58213) Bool)

(assert (=> start!82036 (and (array_inv!21653 _values!1197) e!538908)))

(declare-datatypes ((array!58215 0))(
  ( (array!58216 (arr!27983 (Array (_ BitVec 32) (_ BitVec 64))) (size!28463 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58215)

(declare-fun array_inv!21654 (array!58215) Bool)

(assert (=> start!82036 (array_inv!21654 _keys!1441)))

(declare-fun b!956305 () Bool)

(declare-fun e!538910 () Bool)

(declare-fun tp_is_empty!21047 () Bool)

(assert (=> b!956305 (= e!538910 tp_is_empty!21047)))

(declare-fun mapNonEmpty!33532 () Bool)

(declare-fun mapRes!33532 () Bool)

(declare-fun tp!64111 () Bool)

(declare-fun e!538911 () Bool)

(assert (=> mapNonEmpty!33532 (= mapRes!33532 (and tp!64111 e!538911))))

(declare-fun mapKey!33532 () (_ BitVec 32))

(declare-fun mapRest!33532 () (Array (_ BitVec 32) ValueCell!10042))

(declare-fun mapValue!33532 () ValueCell!10042)

(assert (=> mapNonEmpty!33532 (= (arr!27982 _values!1197) (store mapRest!33532 mapKey!33532 mapValue!33532))))

(declare-fun b!956306 () Bool)

(declare-fun res!640423 () Bool)

(assert (=> b!956306 (=> (not res!640423) (not e!538907))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58215 (_ BitVec 32)) Bool)

(assert (=> b!956306 (= res!640423 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!956307 () Bool)

(assert (=> b!956307 (= e!538907 false)))

(declare-fun lt!430093 () Bool)

(declare-datatypes ((List!19626 0))(
  ( (Nil!19623) (Cons!19622 (h!20784 (_ BitVec 64)) (t!27995 List!19626)) )
))
(declare-fun arrayNoDuplicates!0 (array!58215 (_ BitVec 32) List!19626) Bool)

(assert (=> b!956307 (= lt!430093 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19623))))

(declare-fun b!956308 () Bool)

(declare-fun res!640422 () Bool)

(assert (=> b!956308 (=> (not res!640422) (not e!538907))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(assert (=> b!956308 (= res!640422 (and (= (size!28462 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28463 _keys!1441) (size!28462 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!956309 () Bool)

(assert (=> b!956309 (= e!538908 (and e!538910 mapRes!33532))))

(declare-fun condMapEmpty!33532 () Bool)

(declare-fun mapDefault!33532 () ValueCell!10042)

