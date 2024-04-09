; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82038 () Bool)

(assert start!82038)

(declare-fun b!956323 () Bool)

(declare-fun e!538922 () Bool)

(assert (=> b!956323 (= e!538922 false)))

(declare-fun lt!430096 () Bool)

(declare-datatypes ((array!58217 0))(
  ( (array!58218 (arr!27984 (Array (_ BitVec 32) (_ BitVec 64))) (size!28464 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58217)

(declare-datatypes ((List!19627 0))(
  ( (Nil!19624) (Cons!19623 (h!20785 (_ BitVec 64)) (t!27996 List!19627)) )
))
(declare-fun arrayNoDuplicates!0 (array!58217 (_ BitVec 32) List!19627) Bool)

(assert (=> b!956323 (= lt!430096 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19624))))

(declare-fun mapIsEmpty!33535 () Bool)

(declare-fun mapRes!33535 () Bool)

(assert (=> mapIsEmpty!33535 mapRes!33535))

(declare-fun b!956324 () Bool)

(declare-fun res!640430 () Bool)

(assert (=> b!956324 (=> (not res!640430) (not e!538922))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-datatypes ((V!33049 0))(
  ( (V!33050 (val!10575 Int)) )
))
(declare-datatypes ((ValueCell!10043 0))(
  ( (ValueCellFull!10043 (v!13130 V!33049)) (EmptyCell!10043) )
))
(declare-datatypes ((array!58219 0))(
  ( (array!58220 (arr!27985 (Array (_ BitVec 32) ValueCell!10043)) (size!28465 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58219)

(declare-fun mask!1823 () (_ BitVec 32))

(assert (=> b!956324 (= res!640430 (and (= (size!28465 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28464 _keys!1441) (size!28465 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!956325 () Bool)

(declare-fun res!640432 () Bool)

(assert (=> b!956325 (=> (not res!640432) (not e!538922))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58217 (_ BitVec 32)) Bool)

(assert (=> b!956325 (= res!640432 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!956326 () Bool)

(declare-fun e!538925 () Bool)

(declare-fun tp_is_empty!21049 () Bool)

(assert (=> b!956326 (= e!538925 tp_is_empty!21049)))

(declare-fun b!956327 () Bool)

(declare-fun e!538926 () Bool)

(declare-fun e!538923 () Bool)

(assert (=> b!956327 (= e!538926 (and e!538923 mapRes!33535))))

(declare-fun condMapEmpty!33535 () Bool)

(declare-fun mapDefault!33535 () ValueCell!10043)

