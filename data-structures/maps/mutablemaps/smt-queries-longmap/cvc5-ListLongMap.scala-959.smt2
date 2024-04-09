; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20862 () Bool)

(assert start!20862)

(declare-fun b_free!5503 () Bool)

(declare-fun b_next!5503 () Bool)

(assert (=> start!20862 (= b_free!5503 (not b_next!5503))))

(declare-fun tp!19549 () Bool)

(declare-fun b_and!12267 () Bool)

(assert (=> start!20862 (= tp!19549 b_and!12267)))

(declare-fun mapIsEmpty!9116 () Bool)

(declare-fun mapRes!9116 () Bool)

(assert (=> mapIsEmpty!9116 mapRes!9116))

(declare-fun mapNonEmpty!9116 () Bool)

(declare-fun tp!19550 () Bool)

(declare-fun e!136314 () Bool)

(assert (=> mapNonEmpty!9116 (= mapRes!9116 (and tp!19550 e!136314))))

(declare-datatypes ((V!6801 0))(
  ( (V!6802 (val!2727 Int)) )
))
(declare-datatypes ((ValueCell!2339 0))(
  ( (ValueCellFull!2339 (v!4693 V!6801)) (EmptyCell!2339) )
))
(declare-fun mapRest!9116 () (Array (_ BitVec 32) ValueCell!2339))

(declare-fun mapKey!9116 () (_ BitVec 32))

(declare-datatypes ((array!9928 0))(
  ( (array!9929 (arr!4714 (Array (_ BitVec 32) ValueCell!2339)) (size!5039 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9928)

(declare-fun mapValue!9116 () ValueCell!2339)

(assert (=> mapNonEmpty!9116 (= (arr!4714 _values!649) (store mapRest!9116 mapKey!9116 mapValue!9116))))

(declare-fun b!209166 () Bool)

(declare-fun res!101929 () Bool)

(declare-fun e!136312 () Bool)

(assert (=> b!209166 (=> (not res!101929) (not e!136312))))

(declare-datatypes ((array!9930 0))(
  ( (array!9931 (arr!4715 (Array (_ BitVec 32) (_ BitVec 64))) (size!5040 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9930)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!209166 (= res!101929 (and (= (size!5039 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5040 _keys!825) (size!5039 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!209167 () Bool)

(declare-fun tp_is_empty!5365 () Bool)

(assert (=> b!209167 (= e!136314 tp_is_empty!5365)))

(declare-fun b!209169 () Bool)

(declare-fun res!101932 () Bool)

(assert (=> b!209169 (=> (not res!101932) (not e!136312))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!209169 (= res!101932 (validKeyInArray!0 k!843))))

(declare-fun b!209170 () Bool)

(declare-fun e!136313 () Bool)

(assert (=> b!209170 (= e!136313 tp_is_empty!5365)))

(declare-fun b!209171 () Bool)

(declare-fun e!136315 () Bool)

(assert (=> b!209171 (= e!136315 (and e!136313 mapRes!9116))))

(declare-fun condMapEmpty!9116 () Bool)

(declare-fun mapDefault!9116 () ValueCell!2339)

