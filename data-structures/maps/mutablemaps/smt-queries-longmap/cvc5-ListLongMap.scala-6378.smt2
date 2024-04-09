; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82032 () Bool)

(assert start!82032)

(declare-fun b!956269 () Bool)

(declare-fun res!640403 () Bool)

(declare-fun e!538878 () Bool)

(assert (=> b!956269 (=> (not res!640403) (not e!538878))))

(declare-datatypes ((array!58205 0))(
  ( (array!58206 (arr!27978 (Array (_ BitVec 32) (_ BitVec 64))) (size!28458 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58205)

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58205 (_ BitVec 32)) Bool)

(assert (=> b!956269 (= res!640403 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!956270 () Bool)

(declare-fun e!538879 () Bool)

(declare-fun tp_is_empty!21043 () Bool)

(assert (=> b!956270 (= e!538879 tp_is_empty!21043)))

(declare-fun mapNonEmpty!33526 () Bool)

(declare-fun mapRes!33526 () Bool)

(declare-fun tp!64105 () Bool)

(assert (=> mapNonEmpty!33526 (= mapRes!33526 (and tp!64105 e!538879))))

(declare-datatypes ((V!33041 0))(
  ( (V!33042 (val!10572 Int)) )
))
(declare-datatypes ((ValueCell!10040 0))(
  ( (ValueCellFull!10040 (v!13127 V!33041)) (EmptyCell!10040) )
))
(declare-datatypes ((array!58207 0))(
  ( (array!58208 (arr!27979 (Array (_ BitVec 32) ValueCell!10040)) (size!28459 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58207)

(declare-fun mapKey!33526 () (_ BitVec 32))

(declare-fun mapRest!33526 () (Array (_ BitVec 32) ValueCell!10040))

(declare-fun mapValue!33526 () ValueCell!10040)

(assert (=> mapNonEmpty!33526 (= (arr!27979 _values!1197) (store mapRest!33526 mapKey!33526 mapValue!33526))))

(declare-fun b!956271 () Bool)

(declare-fun res!640405 () Bool)

(assert (=> b!956271 (=> (not res!640405) (not e!538878))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(assert (=> b!956271 (= res!640405 (and (= (size!28459 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28458 _keys!1441) (size!28459 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!956272 () Bool)

(declare-fun e!538881 () Bool)

(declare-fun e!538880 () Bool)

(assert (=> b!956272 (= e!538881 (and e!538880 mapRes!33526))))

(declare-fun condMapEmpty!33526 () Bool)

(declare-fun mapDefault!33526 () ValueCell!10040)

