; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81828 () Bool)

(assert start!81828)

(declare-fun res!638855 () Bool)

(declare-fun e!537401 () Bool)

(assert (=> start!81828 (=> (not res!638855) (not e!537401))))

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81828 (= res!638855 (validMask!0 mask!1823))))

(assert (=> start!81828 e!537401))

(assert (=> start!81828 true))

(declare-datatypes ((V!32785 0))(
  ( (V!32786 (val!10476 Int)) )
))
(declare-datatypes ((ValueCell!9944 0))(
  ( (ValueCellFull!9944 (v!13030 V!32785)) (EmptyCell!9944) )
))
(declare-datatypes ((array!57829 0))(
  ( (array!57830 (arr!27791 (Array (_ BitVec 32) ValueCell!9944)) (size!28271 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57829)

(declare-fun e!537406 () Bool)

(declare-fun array_inv!21515 (array!57829) Bool)

(assert (=> start!81828 (and (array_inv!21515 _values!1197) e!537406)))

(declare-datatypes ((array!57831 0))(
  ( (array!57832 (arr!27792 (Array (_ BitVec 32) (_ BitVec 64))) (size!28272 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!57831)

(declare-fun array_inv!21516 (array!57831) Bool)

(assert (=> start!81828 (array_inv!21516 _keys!1441)))

(declare-fun b!953838 () Bool)

(declare-fun e!537405 () Bool)

(declare-datatypes ((List!19508 0))(
  ( (Nil!19505) (Cons!19504 (h!20666 (_ BitVec 64)) (t!27877 List!19508)) )
))
(declare-fun contains!5265 (List!19508 (_ BitVec 64)) Bool)

(assert (=> b!953838 (= e!537405 (contains!5265 Nil!19505 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!33235 () Bool)

(declare-fun mapRes!33235 () Bool)

(declare-fun tp!63625 () Bool)

(declare-fun e!537403 () Bool)

(assert (=> mapNonEmpty!33235 (= mapRes!33235 (and tp!63625 e!537403))))

(declare-fun mapKey!33235 () (_ BitVec 32))

(declare-fun mapValue!33235 () ValueCell!9944)

(declare-fun mapRest!33235 () (Array (_ BitVec 32) ValueCell!9944))

(assert (=> mapNonEmpty!33235 (= (arr!27791 _values!1197) (store mapRest!33235 mapKey!33235 mapValue!33235))))

(declare-fun b!953839 () Bool)

(declare-fun res!638853 () Bool)

(assert (=> b!953839 (=> (not res!638853) (not e!537401))))

(declare-fun noDuplicate!1364 (List!19508) Bool)

(assert (=> b!953839 (= res!638853 (noDuplicate!1364 Nil!19505))))

(declare-fun b!953840 () Bool)

(declare-fun res!638852 () Bool)

(assert (=> b!953840 (=> (not res!638852) (not e!537401))))

(assert (=> b!953840 (= res!638852 (and (bvsle #b00000000000000000000000000000000 (size!28272 _keys!1441)) (bvslt (size!28272 _keys!1441) #b01111111111111111111111111111111)))))

(declare-fun b!953841 () Bool)

(declare-fun res!638850 () Bool)

(assert (=> b!953841 (=> (not res!638850) (not e!537401))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(assert (=> b!953841 (= res!638850 (and (= (size!28271 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28272 _keys!1441) (size!28271 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!953842 () Bool)

(declare-fun e!537402 () Bool)

(declare-fun tp_is_empty!20851 () Bool)

(assert (=> b!953842 (= e!537402 tp_is_empty!20851)))

(declare-fun b!953843 () Bool)

(assert (=> b!953843 (= e!537406 (and e!537402 mapRes!33235))))

(declare-fun condMapEmpty!33235 () Bool)

(declare-fun mapDefault!33235 () ValueCell!9944)

