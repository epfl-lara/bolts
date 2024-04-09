; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81874 () Bool)

(assert start!81874)

(declare-fun b_free!18341 () Bool)

(declare-fun b_next!18341 () Bool)

(assert (=> start!81874 (= b_free!18341 (not b_next!18341))))

(declare-fun tp!63723 () Bool)

(declare-fun b_and!29845 () Bool)

(assert (=> start!81874 (= tp!63723 b_and!29845)))

(declare-fun mapIsEmpty!33289 () Bool)

(declare-fun mapRes!33289 () Bool)

(assert (=> mapIsEmpty!33289 mapRes!33289))

(declare-fun b!954331 () Bool)

(declare-fun res!639176 () Bool)

(declare-fun e!537694 () Bool)

(assert (=> b!954331 (=> (not res!639176) (not e!537694))))

(declare-datatypes ((array!57895 0))(
  ( (array!57896 (arr!27823 (Array (_ BitVec 32) (_ BitVec 64))) (size!28303 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!57895)

(declare-datatypes ((List!19532 0))(
  ( (Nil!19529) (Cons!19528 (h!20690 (_ BitVec 64)) (t!27901 List!19532)) )
))
(declare-fun arrayNoDuplicates!0 (array!57895 (_ BitVec 32) List!19532) Bool)

(assert (=> b!954331 (= res!639176 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19529))))

(declare-fun b!954332 () Bool)

(declare-fun res!639180 () Bool)

(assert (=> b!954332 (=> (not res!639180) (not e!537694))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-datatypes ((V!32829 0))(
  ( (V!32830 (val!10493 Int)) )
))
(declare-datatypes ((ValueCell!9961 0))(
  ( (ValueCellFull!9961 (v!13048 V!32829)) (EmptyCell!9961) )
))
(declare-datatypes ((array!57897 0))(
  ( (array!57898 (arr!27824 (Array (_ BitVec 32) ValueCell!9961)) (size!28304 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57897)

(declare-fun mask!1823 () (_ BitVec 32))

(assert (=> b!954332 (= res!639180 (and (= (size!28304 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28303 _keys!1441) (size!28304 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!954333 () Bool)

(declare-fun e!537696 () Bool)

(declare-fun tp_is_empty!20885 () Bool)

(assert (=> b!954333 (= e!537696 tp_is_empty!20885)))

(declare-fun b!954334 () Bool)

(declare-fun res!639181 () Bool)

(assert (=> b!954334 (=> (not res!639181) (not e!537694))))

(declare-fun i!735 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!954334 (= res!639181 (validKeyInArray!0 (select (arr!27823 _keys!1441) i!735)))))

(declare-fun res!639177 () Bool)

(assert (=> start!81874 (=> (not res!639177) (not e!537694))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81874 (= res!639177 (validMask!0 mask!1823))))

(assert (=> start!81874 e!537694))

(assert (=> start!81874 true))

(assert (=> start!81874 tp_is_empty!20885))

(declare-fun array_inv!21541 (array!57895) Bool)

(assert (=> start!81874 (array_inv!21541 _keys!1441)))

(declare-fun e!537693 () Bool)

(declare-fun array_inv!21542 (array!57897) Bool)

(assert (=> start!81874 (and (array_inv!21542 _values!1197) e!537693)))

(assert (=> start!81874 tp!63723))

(declare-fun mapNonEmpty!33289 () Bool)

(declare-fun tp!63724 () Bool)

(assert (=> mapNonEmpty!33289 (= mapRes!33289 (and tp!63724 e!537696))))

(declare-fun mapValue!33289 () ValueCell!9961)

(declare-fun mapKey!33289 () (_ BitVec 32))

(declare-fun mapRest!33289 () (Array (_ BitVec 32) ValueCell!9961))

(assert (=> mapNonEmpty!33289 (= (arr!27824 _values!1197) (store mapRest!33289 mapKey!33289 mapValue!33289))))

(declare-fun b!954335 () Bool)

(declare-fun e!537695 () Bool)

(assert (=> b!954335 (= e!537695 tp_is_empty!20885)))

(declare-fun b!954336 () Bool)

(declare-fun res!639178 () Bool)

(assert (=> b!954336 (=> (not res!639178) (not e!537694))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57895 (_ BitVec 32)) Bool)

(assert (=> b!954336 (= res!639178 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!954337 () Bool)

(assert (=> b!954337 (= e!537693 (and e!537695 mapRes!33289))))

(declare-fun condMapEmpty!33289 () Bool)

(declare-fun mapDefault!33289 () ValueCell!9961)

