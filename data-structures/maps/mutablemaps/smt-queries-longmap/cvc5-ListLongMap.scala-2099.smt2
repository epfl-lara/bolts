; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35770 () Bool)

(assert start!35770)

(declare-fun mapIsEmpty!13830 () Bool)

(declare-fun mapRes!13830 () Bool)

(assert (=> mapIsEmpty!13830 mapRes!13830))

(declare-fun b!359043 () Bool)

(declare-fun e!219881 () Bool)

(assert (=> b!359043 (= e!219881 false)))

(declare-fun lt!166270 () Bool)

(declare-datatypes ((array!19951 0))(
  ( (array!19952 (arr!9466 (Array (_ BitVec 32) (_ BitVec 64))) (size!9818 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19951)

(declare-datatypes ((List!5483 0))(
  ( (Nil!5480) (Cons!5479 (h!6335 (_ BitVec 64)) (t!10641 List!5483)) )
))
(declare-fun arrayNoDuplicates!0 (array!19951 (_ BitVec 32) List!5483) Bool)

(assert (=> b!359043 (= lt!166270 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5480))))

(declare-fun b!359044 () Bool)

(declare-fun e!219878 () Bool)

(declare-fun e!219880 () Bool)

(assert (=> b!359044 (= e!219878 (and e!219880 mapRes!13830))))

(declare-fun condMapEmpty!13830 () Bool)

(declare-datatypes ((V!11931 0))(
  ( (V!11932 (val!4152 Int)) )
))
(declare-datatypes ((ValueCell!3764 0))(
  ( (ValueCellFull!3764 (v!6342 V!11931)) (EmptyCell!3764) )
))
(declare-datatypes ((array!19953 0))(
  ( (array!19954 (arr!9467 (Array (_ BitVec 32) ValueCell!3764)) (size!9819 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19953)

(declare-fun mapDefault!13830 () ValueCell!3764)

