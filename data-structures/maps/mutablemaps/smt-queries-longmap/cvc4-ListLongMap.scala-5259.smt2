; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70702 () Bool)

(assert start!70702)

(declare-fun b_free!12965 () Bool)

(declare-fun b_next!12965 () Bool)

(assert (=> start!70702 (= b_free!12965 (not b_next!12965))))

(declare-fun tp!45633 () Bool)

(declare-fun b_and!21837 () Bool)

(assert (=> start!70702 (= tp!45633 b_and!21837)))

(declare-fun mapIsEmpty!23617 () Bool)

(declare-fun mapRes!23617 () Bool)

(assert (=> mapIsEmpty!23617 mapRes!23617))

(declare-fun b!820854 () Bool)

(declare-fun e!456155 () Bool)

(declare-fun e!456156 () Bool)

(assert (=> b!820854 (= e!456155 (and e!456156 mapRes!23617))))

(declare-fun condMapEmpty!23617 () Bool)

(declare-datatypes ((V!24567 0))(
  ( (V!24568 (val!7385 Int)) )
))
(declare-datatypes ((ValueCell!6922 0))(
  ( (ValueCellFull!6922 (v!9812 V!24567)) (EmptyCell!6922) )
))
(declare-datatypes ((array!45510 0))(
  ( (array!45511 (arr!21803 (Array (_ BitVec 32) ValueCell!6922)) (size!22224 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45510)

(declare-fun mapDefault!23617 () ValueCell!6922)

