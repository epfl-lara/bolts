; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35756 () Bool)

(assert start!35756)

(declare-fun b!358917 () Bool)

(declare-fun e!219775 () Bool)

(declare-fun tp_is_empty!8201 () Bool)

(assert (=> b!358917 (= e!219775 tp_is_empty!8201)))

(declare-fun b!358918 () Bool)

(declare-fun e!219774 () Bool)

(declare-fun mapRes!13809 () Bool)

(assert (=> b!358918 (= e!219774 (and e!219775 mapRes!13809))))

(declare-fun condMapEmpty!13809 () Bool)

(declare-datatypes ((V!11911 0))(
  ( (V!11912 (val!4145 Int)) )
))
(declare-datatypes ((ValueCell!3757 0))(
  ( (ValueCellFull!3757 (v!6335 V!11911)) (EmptyCell!3757) )
))
(declare-datatypes ((array!19927 0))(
  ( (array!19928 (arr!9454 (Array (_ BitVec 32) ValueCell!3757)) (size!9806 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19927)

(declare-fun mapDefault!13809 () ValueCell!3757)

