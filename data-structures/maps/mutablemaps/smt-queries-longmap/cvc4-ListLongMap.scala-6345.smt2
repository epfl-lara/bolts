; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81816 () Bool)

(assert start!81816)

(declare-fun b!953787 () Bool)

(declare-fun res!638823 () Bool)

(declare-fun e!537363 () Bool)

(assert (=> b!953787 (=> (not res!638823) (not e!537363))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-datatypes ((array!57823 0))(
  ( (array!57824 (arr!27789 (Array (_ BitVec 32) (_ BitVec 64))) (size!28269 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!57823)

(declare-datatypes ((V!32781 0))(
  ( (V!32782 (val!10475 Int)) )
))
(declare-datatypes ((ValueCell!9943 0))(
  ( (ValueCellFull!9943 (v!13029 V!32781)) (EmptyCell!9943) )
))
(declare-datatypes ((array!57825 0))(
  ( (array!57826 (arr!27790 (Array (_ BitVec 32) ValueCell!9943)) (size!28270 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57825)

(declare-fun mask!1823 () (_ BitVec 32))

(assert (=> b!953787 (= res!638823 (and (= (size!28270 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28269 _keys!1441) (size!28270 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!953788 () Bool)

(declare-fun e!537366 () Bool)

(declare-fun tp_is_empty!20849 () Bool)

(assert (=> b!953788 (= e!537366 tp_is_empty!20849)))

(declare-fun mapNonEmpty!33229 () Bool)

(declare-fun mapRes!33229 () Bool)

(declare-fun tp!63619 () Bool)

(declare-fun e!537367 () Bool)

(assert (=> mapNonEmpty!33229 (= mapRes!33229 (and tp!63619 e!537367))))

(declare-fun mapValue!33229 () ValueCell!9943)

(declare-fun mapKey!33229 () (_ BitVec 32))

(declare-fun mapRest!33229 () (Array (_ BitVec 32) ValueCell!9943))

(assert (=> mapNonEmpty!33229 (= (arr!27790 _values!1197) (store mapRest!33229 mapKey!33229 mapValue!33229))))

(declare-fun res!638825 () Bool)

(assert (=> start!81816 (=> (not res!638825) (not e!537363))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81816 (= res!638825 (validMask!0 mask!1823))))

(assert (=> start!81816 e!537363))

(assert (=> start!81816 true))

(declare-fun e!537364 () Bool)

(declare-fun array_inv!21513 (array!57825) Bool)

(assert (=> start!81816 (and (array_inv!21513 _values!1197) e!537364)))

(declare-fun array_inv!21514 (array!57823) Bool)

(assert (=> start!81816 (array_inv!21514 _keys!1441)))

(declare-fun b!953789 () Bool)

(declare-fun res!638822 () Bool)

(assert (=> b!953789 (=> (not res!638822) (not e!537363))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57823 (_ BitVec 32)) Bool)

(assert (=> b!953789 (= res!638822 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!953790 () Bool)

(declare-datatypes ((List!19507 0))(
  ( (Nil!19504) (Cons!19503 (h!20665 (_ BitVec 64)) (t!27876 List!19507)) )
))
(declare-fun noDuplicate!1363 (List!19507) Bool)

(assert (=> b!953790 (= e!537363 (not (noDuplicate!1363 Nil!19504)))))

(declare-fun b!953791 () Bool)

(assert (=> b!953791 (= e!537364 (and e!537366 mapRes!33229))))

(declare-fun condMapEmpty!33229 () Bool)

(declare-fun mapDefault!33229 () ValueCell!9943)

