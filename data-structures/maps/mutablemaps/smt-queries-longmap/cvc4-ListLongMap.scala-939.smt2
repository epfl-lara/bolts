; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20746 () Bool)

(assert start!20746)

(declare-fun b_free!5393 () Bool)

(declare-fun b_next!5393 () Bool)

(assert (=> start!20746 (= b_free!5393 (not b_next!5393))))

(declare-fun tp!19210 () Bool)

(declare-fun b_and!12157 () Bool)

(assert (=> start!20746 (= tp!19210 b_and!12157)))

(declare-fun res!100747 () Bool)

(declare-fun e!135445 () Bool)

(assert (=> start!20746 (=> (not res!100747) (not e!135445))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20746 (= res!100747 (validMask!0 mask!1149))))

(assert (=> start!20746 e!135445))

(declare-datatypes ((V!6645 0))(
  ( (V!6646 (val!2669 Int)) )
))
(declare-datatypes ((ValueCell!2281 0))(
  ( (ValueCellFull!2281 (v!4635 V!6645)) (EmptyCell!2281) )
))
(declare-datatypes ((array!9704 0))(
  ( (array!9705 (arr!4602 (Array (_ BitVec 32) ValueCell!2281)) (size!4927 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9704)

(declare-fun e!135442 () Bool)

(declare-fun array_inv!3039 (array!9704) Bool)

(assert (=> start!20746 (and (array_inv!3039 _values!649) e!135442)))

(assert (=> start!20746 true))

(declare-fun tp_is_empty!5249 () Bool)

(assert (=> start!20746 tp_is_empty!5249))

(declare-datatypes ((array!9706 0))(
  ( (array!9707 (arr!4603 (Array (_ BitVec 32) (_ BitVec 64))) (size!4928 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9706)

(declare-fun array_inv!3040 (array!9706) Bool)

(assert (=> start!20746 (array_inv!3040 _keys!825)))

(assert (=> start!20746 tp!19210))

(declare-fun b!207462 () Bool)

(declare-fun res!100749 () Bool)

(assert (=> b!207462 (=> (not res!100749) (not e!135445))))

(declare-datatypes ((List!2963 0))(
  ( (Nil!2960) (Cons!2959 (h!3601 (_ BitVec 64)) (t!7902 List!2963)) )
))
(declare-fun arrayNoDuplicates!0 (array!9706 (_ BitVec 32) List!2963) Bool)

(assert (=> b!207462 (= res!100749 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2960))))

(declare-fun b!207463 () Bool)

(declare-fun res!100752 () Bool)

(assert (=> b!207463 (=> (not res!100752) (not e!135445))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!207463 (= res!100752 (and (= (size!4927 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4928 _keys!825) (size!4927 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!207464 () Bool)

(declare-fun e!135443 () Bool)

(declare-fun mapRes!8942 () Bool)

(assert (=> b!207464 (= e!135442 (and e!135443 mapRes!8942))))

(declare-fun condMapEmpty!8942 () Bool)

(declare-fun mapDefault!8942 () ValueCell!2281)

