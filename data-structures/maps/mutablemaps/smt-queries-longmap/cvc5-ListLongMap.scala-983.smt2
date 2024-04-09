; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21228 () Bool)

(assert start!21228)

(declare-fun b_free!5647 () Bool)

(declare-fun b_next!5647 () Bool)

(assert (=> start!21228 (= b_free!5647 (not b_next!5647))))

(declare-fun tp!20014 () Bool)

(declare-fun b_and!12543 () Bool)

(assert (=> start!21228 (= tp!20014 b_and!12543)))

(declare-fun b!213722 () Bool)

(declare-fun e!138980 () Bool)

(declare-fun tp_is_empty!5509 () Bool)

(assert (=> b!213722 (= e!138980 tp_is_empty!5509)))

(declare-fun b!213723 () Bool)

(declare-fun e!138984 () Bool)

(assert (=> b!213723 (= e!138984 tp_is_empty!5509)))

(declare-fun res!104652 () Bool)

(declare-fun e!138985 () Bool)

(assert (=> start!21228 (=> (not res!104652) (not e!138985))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!21228 (= res!104652 (validMask!0 mask!1149))))

(assert (=> start!21228 e!138985))

(declare-datatypes ((V!6993 0))(
  ( (V!6994 (val!2799 Int)) )
))
(declare-datatypes ((ValueCell!2411 0))(
  ( (ValueCellFull!2411 (v!4809 V!6993)) (EmptyCell!2411) )
))
(declare-datatypes ((array!10220 0))(
  ( (array!10221 (arr!4849 (Array (_ BitVec 32) ValueCell!2411)) (size!5174 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10220)

(declare-fun e!138981 () Bool)

(declare-fun array_inv!3197 (array!10220) Bool)

(assert (=> start!21228 (and (array_inv!3197 _values!649) e!138981)))

(assert (=> start!21228 true))

(assert (=> start!21228 tp_is_empty!5509))

(declare-datatypes ((array!10222 0))(
  ( (array!10223 (arr!4850 (Array (_ BitVec 32) (_ BitVec 64))) (size!5175 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!10222)

(declare-fun array_inv!3198 (array!10222) Bool)

(assert (=> start!21228 (array_inv!3198 _keys!825)))

(assert (=> start!21228 tp!20014))

(declare-fun b!213724 () Bool)

(declare-fun mapRes!9365 () Bool)

(assert (=> b!213724 (= e!138981 (and e!138980 mapRes!9365))))

(declare-fun condMapEmpty!9365 () Bool)

(declare-fun mapDefault!9365 () ValueCell!2411)

