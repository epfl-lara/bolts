; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36048 () Bool)

(assert start!36048)

(declare-fun b!361715 () Bool)

(declare-fun res!201305 () Bool)

(declare-fun e!221548 () Bool)

(assert (=> b!361715 (=> (not res!201305) (not e!221548))))

(declare-datatypes ((array!20351 0))(
  ( (array!20352 (arr!9658 (Array (_ BitVec 32) (_ BitVec 64))) (size!10010 (_ BitVec 32))) )
))
(declare-fun _keys!1541 () array!20351)

(declare-fun extraKeys!1198 () (_ BitVec 32))

(declare-fun mask!1943 () (_ BitVec 32))

(declare-datatypes ((V!12191 0))(
  ( (V!12192 (val!4250 Int)) )
))
(declare-datatypes ((ValueCell!3862 0))(
  ( (ValueCellFull!3862 (v!6441 V!12191)) (EmptyCell!3862) )
))
(declare-datatypes ((array!20353 0))(
  ( (array!20354 (arr!9659 (Array (_ BitVec 32) ValueCell!3862)) (size!10011 (_ BitVec 32))) )
))
(declare-fun _values!1277 () array!20353)

(assert (=> b!361715 (= res!201305 (and (= (size!10011 _values!1277) (bvadd #b00000000000000000000000000000001 mask!1943)) (= (size!10010 _keys!1541) (size!10011 _values!1277)) (bvsge mask!1943 #b00000000000000000000000000000000) (bvsge extraKeys!1198 #b00000000000000000000000000000000) (bvsle extraKeys!1198 #b00000000000000000000000000000011)))))

(declare-fun b!361716 () Bool)

(declare-fun res!201303 () Bool)

(assert (=> b!361716 (=> (not res!201303) (not e!221548))))

(declare-fun from!1924 () (_ BitVec 32))

(declare-fun k!1134 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!20351 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!361716 (= res!201303 (arrayContainsKey!0 _keys!1541 k!1134 from!1924))))

(declare-fun mapNonEmpty!14148 () Bool)

(declare-fun mapRes!14148 () Bool)

(declare-fun tp!28224 () Bool)

(declare-fun e!221550 () Bool)

(assert (=> mapNonEmpty!14148 (= mapRes!14148 (and tp!28224 e!221550))))

(declare-fun mapKey!14148 () (_ BitVec 32))

(declare-fun mapRest!14148 () (Array (_ BitVec 32) ValueCell!3862))

(declare-fun mapValue!14148 () ValueCell!3862)

(assert (=> mapNonEmpty!14148 (= (arr!9659 _values!1277) (store mapRest!14148 mapKey!14148 mapValue!14148))))

(declare-fun b!361717 () Bool)

(assert (=> b!361717 (= e!221548 (and (not (= (select (arr!9658 _keys!1541) from!1924) k!1134)) (bvsge (bvadd #b00000000000000000000000000000001 from!1924) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1924) (size!10010 _keys!1541)) (bvsge (size!10010 _keys!1541) #b01111111111111111111111111111111)))))

(declare-fun b!361718 () Bool)

(declare-fun e!221546 () Bool)

(declare-fun e!221549 () Bool)

(assert (=> b!361718 (= e!221546 (and e!221549 mapRes!14148))))

(declare-fun condMapEmpty!14148 () Bool)

(declare-fun mapDefault!14148 () ValueCell!3862)

