; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82066 () Bool)

(assert start!82066)

(declare-fun b_free!18445 () Bool)

(declare-fun b_next!18445 () Bool)

(assert (=> start!82066 (= b_free!18445 (not b_next!18445))))

(declare-fun tp!64146 () Bool)

(declare-fun b_and!29951 () Bool)

(assert (=> start!82066 (= tp!64146 b_and!29951)))

(declare-fun res!640565 () Bool)

(declare-fun e!539087 () Bool)

(assert (=> start!82066 (=> (not res!640565) (not e!539087))))

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82066 (= res!640565 (validMask!0 mask!1823))))

(assert (=> start!82066 e!539087))

(assert (=> start!82066 true))

(declare-fun tp_is_empty!21061 () Bool)

(assert (=> start!82066 tp_is_empty!21061))

(declare-datatypes ((array!58241 0))(
  ( (array!58242 (arr!27995 (Array (_ BitVec 32) (_ BitVec 64))) (size!28475 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58241)

(declare-fun array_inv!21659 (array!58241) Bool)

(assert (=> start!82066 (array_inv!21659 _keys!1441)))

(declare-datatypes ((V!33065 0))(
  ( (V!33066 (val!10581 Int)) )
))
(declare-datatypes ((ValueCell!10049 0))(
  ( (ValueCellFull!10049 (v!13137 V!33065)) (EmptyCell!10049) )
))
(declare-datatypes ((array!58243 0))(
  ( (array!58244 (arr!27996 (Array (_ BitVec 32) ValueCell!10049)) (size!28476 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58243)

(declare-fun e!539088 () Bool)

(declare-fun array_inv!21660 (array!58243) Bool)

(assert (=> start!82066 (and (array_inv!21660 _values!1197) e!539088)))

(assert (=> start!82066 tp!64146))

(declare-fun b!956575 () Bool)

(declare-fun e!539084 () Bool)

(assert (=> b!956575 (= e!539084 tp_is_empty!21061)))

(declare-fun mapIsEmpty!33556 () Bool)

(declare-fun mapRes!33556 () Bool)

(assert (=> mapIsEmpty!33556 mapRes!33556))

(declare-fun b!956576 () Bool)

(declare-fun res!640564 () Bool)

(assert (=> b!956576 (=> (not res!640564) (not e!539087))))

(declare-datatypes ((List!19632 0))(
  ( (Nil!19629) (Cons!19628 (h!20790 (_ BitVec 64)) (t!28003 List!19632)) )
))
(declare-fun arrayNoDuplicates!0 (array!58241 (_ BitVec 32) List!19632) Bool)

(assert (=> b!956576 (= res!640564 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19629))))

(declare-fun b!956577 () Bool)

(declare-fun res!640568 () Bool)

(assert (=> b!956577 (=> (not res!640568) (not e!539087))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58241 (_ BitVec 32)) Bool)

(assert (=> b!956577 (= res!640568 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!956578 () Bool)

(declare-fun res!640566 () Bool)

(assert (=> b!956578 (=> (not res!640566) (not e!539087))))

(declare-fun i!735 () (_ BitVec 32))

(assert (=> b!956578 (= res!640566 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28475 _keys!1441))))))

(declare-fun mapNonEmpty!33556 () Bool)

(declare-fun tp!64147 () Bool)

(declare-fun e!539086 () Bool)

(assert (=> mapNonEmpty!33556 (= mapRes!33556 (and tp!64147 e!539086))))

(declare-fun mapValue!33556 () ValueCell!10049)

(declare-fun mapKey!33556 () (_ BitVec 32))

(declare-fun mapRest!33556 () (Array (_ BitVec 32) ValueCell!10049))

(assert (=> mapNonEmpty!33556 (= (arr!27996 _values!1197) (store mapRest!33556 mapKey!33556 mapValue!33556))))

(declare-fun b!956579 () Bool)

(declare-fun res!640570 () Bool)

(assert (=> b!956579 (=> (not res!640570) (not e!539087))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(assert (=> b!956579 (= res!640570 (and (= (size!28476 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28475 _keys!1441) (size!28476 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!956580 () Bool)

(assert (=> b!956580 (= e!539088 (and e!539084 mapRes!33556))))

(declare-fun condMapEmpty!33556 () Bool)

(declare-fun mapDefault!33556 () ValueCell!10049)

