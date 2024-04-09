; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81812 () Bool)

(assert start!81812)

(declare-fun res!638800 () Bool)

(declare-fun e!537334 () Bool)

(assert (=> start!81812 (=> (not res!638800) (not e!537334))))

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81812 (= res!638800 (validMask!0 mask!1823))))

(assert (=> start!81812 e!537334))

(assert (=> start!81812 true))

(declare-datatypes ((V!32777 0))(
  ( (V!32778 (val!10473 Int)) )
))
(declare-datatypes ((ValueCell!9941 0))(
  ( (ValueCellFull!9941 (v!13027 V!32777)) (EmptyCell!9941) )
))
(declare-datatypes ((array!57815 0))(
  ( (array!57816 (arr!27785 (Array (_ BitVec 32) ValueCell!9941)) (size!28265 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57815)

(declare-fun e!537333 () Bool)

(declare-fun array_inv!21509 (array!57815) Bool)

(assert (=> start!81812 (and (array_inv!21509 _values!1197) e!537333)))

(declare-datatypes ((array!57817 0))(
  ( (array!57818 (arr!27786 (Array (_ BitVec 32) (_ BitVec 64))) (size!28266 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!57817)

(declare-fun array_inv!21510 (array!57817) Bool)

(assert (=> start!81812 (array_inv!21510 _keys!1441)))

(declare-fun mapIsEmpty!33223 () Bool)

(declare-fun mapRes!33223 () Bool)

(assert (=> mapIsEmpty!33223 mapRes!33223))

(declare-fun b!953745 () Bool)

(declare-fun res!638798 () Bool)

(assert (=> b!953745 (=> (not res!638798) (not e!537334))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(assert (=> b!953745 (= res!638798 (and (= (size!28265 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28266 _keys!1441) (size!28265 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!953746 () Bool)

(declare-fun e!537335 () Bool)

(assert (=> b!953746 (= e!537333 (and e!537335 mapRes!33223))))

(declare-fun condMapEmpty!33223 () Bool)

(declare-fun mapDefault!33223 () ValueCell!9941)

