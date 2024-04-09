; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!19996 () Bool)

(assert start!19996)

(declare-fun mapNonEmpty!7853 () Bool)

(declare-fun mapRes!7853 () Bool)

(declare-fun tp!17141 () Bool)

(declare-fun e!128935 () Bool)

(assert (=> mapNonEmpty!7853 (= mapRes!7853 (and tp!17141 e!128935))))

(declare-fun mapKey!7853 () (_ BitVec 32))

(declare-datatypes ((V!5685 0))(
  ( (V!5686 (val!2309 Int)) )
))
(declare-datatypes ((ValueCell!1921 0))(
  ( (ValueCellFull!1921 (v!4274 V!5685)) (EmptyCell!1921) )
))
(declare-fun mapRest!7853 () (Array (_ BitVec 32) ValueCell!1921))

(declare-datatypes ((array!8314 0))(
  ( (array!8315 (arr!3910 (Array (_ BitVec 32) ValueCell!1921)) (size!4235 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8314)

(declare-fun mapValue!7853 () ValueCell!1921)

(assert (=> mapNonEmpty!7853 (= (arr!3910 _values!649) (store mapRest!7853 mapKey!7853 mapValue!7853))))

(declare-fun b!195857 () Bool)

(declare-fun res!92424 () Bool)

(declare-fun e!128934 () Bool)

(assert (=> b!195857 (=> (not res!92424) (not e!128934))))

(declare-datatypes ((array!8316 0))(
  ( (array!8317 (arr!3911 (Array (_ BitVec 32) (_ BitVec 64))) (size!4236 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8316)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!195857 (= res!92424 (and (= (size!4235 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4236 _keys!825) (size!4235 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!7853 () Bool)

(assert (=> mapIsEmpty!7853 mapRes!7853))

(declare-fun b!195858 () Bool)

(assert (=> b!195858 (= e!128934 (and (bvsle #b00000000000000000000000000000000 (size!4236 _keys!825)) (bvsge (size!4236 _keys!825) #b01111111111111111111111111111111)))))

(declare-fun b!195859 () Bool)

(declare-fun e!128936 () Bool)

(declare-fun e!128932 () Bool)

(assert (=> b!195859 (= e!128936 (and e!128932 mapRes!7853))))

(declare-fun condMapEmpty!7853 () Bool)

(declare-fun mapDefault!7853 () ValueCell!1921)

