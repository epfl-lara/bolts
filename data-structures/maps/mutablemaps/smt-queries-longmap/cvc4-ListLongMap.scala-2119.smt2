; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35910 () Bool)

(assert start!35910)

(declare-fun b_free!7931 () Bool)

(declare-fun b_next!7931 () Bool)

(assert (=> start!35910 (= b_free!7931 (not b_next!7931))))

(declare-fun tp!28095 () Bool)

(declare-fun b_and!15191 () Bool)

(assert (=> start!35910 (= tp!28095 b_and!15191)))

(declare-fun b!360790 () Bool)

(declare-fun res!200809 () Bool)

(declare-fun e!220853 () Bool)

(assert (=> b!360790 (=> (not res!200809) (not e!220853))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((array!20201 0))(
  ( (array!20202 (arr!9590 (Array (_ BitVec 32) (_ BitVec 64))) (size!9942 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!20201)

(declare-datatypes ((V!12095 0))(
  ( (V!12096 (val!4214 Int)) )
))
(declare-datatypes ((ValueCell!3826 0))(
  ( (ValueCellFull!3826 (v!6404 V!12095)) (EmptyCell!3826) )
))
(declare-datatypes ((array!20203 0))(
  ( (array!20204 (arr!9591 (Array (_ BitVec 32) ValueCell!3826)) (size!9943 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!20203)

(assert (=> b!360790 (= res!200809 (and (= (size!9943 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9942 _keys!1456) (size!9943 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!360791 () Bool)

(declare-fun e!220854 () Bool)

(declare-fun e!220855 () Bool)

(declare-fun mapRes!14019 () Bool)

(assert (=> b!360791 (= e!220854 (and e!220855 mapRes!14019))))

(declare-fun condMapEmpty!14019 () Bool)

(declare-fun mapDefault!14019 () ValueCell!3826)

