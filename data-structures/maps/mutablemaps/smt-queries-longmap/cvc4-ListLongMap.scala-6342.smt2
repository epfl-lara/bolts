; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81776 () Bool)

(assert start!81776)

(declare-fun res!638723 () Bool)

(declare-fun e!537196 () Bool)

(assert (=> start!81776 (=> (not res!638723) (not e!537196))))

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81776 (= res!638723 (validMask!0 mask!1823))))

(assert (=> start!81776 e!537196))

(assert (=> start!81776 true))

(declare-datatypes ((V!32757 0))(
  ( (V!32758 (val!10466 Int)) )
))
(declare-datatypes ((ValueCell!9934 0))(
  ( (ValueCellFull!9934 (v!13020 V!32757)) (EmptyCell!9934) )
))
(declare-datatypes ((array!57783 0))(
  ( (array!57784 (arr!27772 (Array (_ BitVec 32) ValueCell!9934)) (size!28252 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57783)

(declare-fun e!537193 () Bool)

(declare-fun array_inv!21501 (array!57783) Bool)

(assert (=> start!81776 (and (array_inv!21501 _values!1197) e!537193)))

(declare-datatypes ((array!57785 0))(
  ( (array!57786 (arr!27773 (Array (_ BitVec 32) (_ BitVec 64))) (size!28253 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!57785)

(declare-fun array_inv!21502 (array!57785) Bool)

(assert (=> start!81776 (array_inv!21502 _keys!1441)))

(declare-fun mapIsEmpty!33193 () Bool)

(declare-fun mapRes!33193 () Bool)

(assert (=> mapIsEmpty!33193 mapRes!33193))

(declare-fun b!953571 () Bool)

(declare-fun e!537192 () Bool)

(declare-fun tp_is_empty!20831 () Bool)

(assert (=> b!953571 (= e!537192 tp_is_empty!20831)))

(declare-fun mapNonEmpty!33193 () Bool)

(declare-fun tp!63583 () Bool)

(declare-fun e!537195 () Bool)

(assert (=> mapNonEmpty!33193 (= mapRes!33193 (and tp!63583 e!537195))))

(declare-fun mapValue!33193 () ValueCell!9934)

(declare-fun mapRest!33193 () (Array (_ BitVec 32) ValueCell!9934))

(declare-fun mapKey!33193 () (_ BitVec 32))

(assert (=> mapNonEmpty!33193 (= (arr!27772 _values!1197) (store mapRest!33193 mapKey!33193 mapValue!33193))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-fun b!953572 () Bool)

(assert (=> b!953572 (= e!537196 (and (= (size!28252 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28253 _keys!1441) (size!28252 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011) (= (size!28253 _keys!1441) (bvadd #b00000000000000000000000000000001 mask!1823)) (bvsgt #b00000000000000000000000000000000 (size!28253 _keys!1441))))))

(declare-fun b!953573 () Bool)

(assert (=> b!953573 (= e!537195 tp_is_empty!20831)))

(declare-fun b!953574 () Bool)

(assert (=> b!953574 (= e!537193 (and e!537192 mapRes!33193))))

(declare-fun condMapEmpty!33193 () Bool)

(declare-fun mapDefault!33193 () ValueCell!9934)

