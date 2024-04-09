; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35894 () Bool)

(assert start!35894)

(declare-fun res!200609 () Bool)

(declare-fun e!220724 () Bool)

(assert (=> start!35894 (=> (not res!200609) (not e!220724))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35894 (= res!200609 (validMask!0 mask!1842))))

(assert (=> start!35894 e!220724))

(declare-fun tp_is_empty!8323 () Bool)

(assert (=> start!35894 tp_is_empty!8323))

(assert (=> start!35894 true))

(declare-datatypes ((array!20169 0))(
  ( (array!20170 (arr!9574 (Array (_ BitVec 32) (_ BitVec 64))) (size!9926 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!20169)

(declare-fun array_inv!7038 (array!20169) Bool)

(assert (=> start!35894 (array_inv!7038 _keys!1456)))

(declare-datatypes ((V!12075 0))(
  ( (V!12076 (val!4206 Int)) )
))
(declare-datatypes ((ValueCell!3818 0))(
  ( (ValueCellFull!3818 (v!6396 V!12075)) (EmptyCell!3818) )
))
(declare-datatypes ((array!20171 0))(
  ( (array!20172 (arr!9575 (Array (_ BitVec 32) ValueCell!3818)) (size!9927 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!20171)

(declare-fun e!220723 () Bool)

(declare-fun array_inv!7039 (array!20171) Bool)

(assert (=> start!35894 (and (array_inv!7039 _values!1208) e!220723)))

(declare-fun b!360518 () Bool)

(declare-fun res!200607 () Bool)

(assert (=> b!360518 (=> (not res!200607) (not e!220724))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!360518 (= res!200607 (and (= (size!9927 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9926 _keys!1456) (size!9927 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!360519 () Bool)

(declare-fun e!220725 () Bool)

(declare-fun mapRes!13995 () Bool)

(assert (=> b!360519 (= e!220723 (and e!220725 mapRes!13995))))

(declare-fun condMapEmpty!13995 () Bool)

(declare-fun mapDefault!13995 () ValueCell!3818)

