; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39274 () Bool)

(assert start!39274)

(declare-fun b_free!9533 () Bool)

(declare-fun b_next!9533 () Bool)

(assert (=> start!39274 (= b_free!9533 (not b_next!9533))))

(declare-fun tp!34127 () Bool)

(declare-fun b_and!16959 () Bool)

(assert (=> start!39274 (= tp!34127 b_and!16959)))

(declare-fun b!414816 () Bool)

(declare-fun res!241340 () Bool)

(declare-fun e!247842 () Bool)

(assert (=> b!414816 (=> (not res!241340) (not e!247842))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!414816 (= res!241340 (validKeyInArray!0 k!794))))

(declare-datatypes ((V!15351 0))(
  ( (V!15352 (val!5387 Int)) )
))
(declare-datatypes ((tuple2!6938 0))(
  ( (tuple2!6939 (_1!3479 (_ BitVec 64)) (_2!3479 V!15351)) )
))
(declare-datatypes ((List!6995 0))(
  ( (Nil!6992) (Cons!6991 (h!7847 tuple2!6938) (t!12201 List!6995)) )
))
(declare-datatypes ((ListLongMap!5865 0))(
  ( (ListLongMap!5866 (toList!2948 List!6995)) )
))
(declare-fun call!28775 () ListLongMap!5865)

(declare-fun e!247838 () Bool)

(declare-fun v!412 () V!15351)

(declare-fun call!28774 () ListLongMap!5865)

(declare-fun b!414817 () Bool)

(declare-fun +!1163 (ListLongMap!5865 tuple2!6938) ListLongMap!5865)

(assert (=> b!414817 (= e!247838 (= call!28775 (+!1163 call!28774 (tuple2!6939 k!794 v!412))))))

(declare-fun b!414818 () Bool)

(declare-fun e!247843 () Bool)

(assert (=> b!414818 (= e!247842 e!247843)))

(declare-fun res!241343 () Bool)

(assert (=> b!414818 (=> (not res!241343) (not e!247843))))

(declare-datatypes ((array!25207 0))(
  ( (array!25208 (arr!12050 (Array (_ BitVec 32) (_ BitVec 64))) (size!12402 (_ BitVec 32))) )
))
(declare-fun lt!190109 () array!25207)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25207 (_ BitVec 32)) Bool)

(assert (=> b!414818 (= res!241343 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!190109 mask!1025))))

(declare-fun _keys!709 () array!25207)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!414818 (= lt!190109 (array!25208 (store (arr!12050 _keys!709) i!563 k!794) (size!12402 _keys!709)))))

(declare-fun b!414819 () Bool)

(declare-fun res!241334 () Bool)

(assert (=> b!414819 (=> (not res!241334) (not e!247842))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4999 0))(
  ( (ValueCellFull!4999 (v!7630 V!15351)) (EmptyCell!4999) )
))
(declare-datatypes ((array!25209 0))(
  ( (array!25210 (arr!12051 (Array (_ BitVec 32) ValueCell!4999)) (size!12403 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25209)

(assert (=> b!414819 (= res!241334 (and (= (size!12403 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12402 _keys!709) (size!12403 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!414820 () Bool)

(declare-fun e!247840 () Bool)

(declare-fun tp_is_empty!10685 () Bool)

(assert (=> b!414820 (= e!247840 tp_is_empty!10685)))

(declare-fun res!241331 () Bool)

(assert (=> start!39274 (=> (not res!241331) (not e!247842))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39274 (= res!241331 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12402 _keys!709))))))

(assert (=> start!39274 e!247842))

(assert (=> start!39274 tp_is_empty!10685))

(assert (=> start!39274 tp!34127))

(assert (=> start!39274 true))

(declare-fun e!247844 () Bool)

(declare-fun array_inv!8788 (array!25209) Bool)

(assert (=> start!39274 (and (array_inv!8788 _values!549) e!247844)))

(declare-fun array_inv!8789 (array!25207) Bool)

(assert (=> start!39274 (array_inv!8789 _keys!709)))

(declare-fun b!414821 () Bool)

(declare-fun mapRes!17649 () Bool)

(assert (=> b!414821 (= e!247844 (and e!247840 mapRes!17649))))

(declare-fun condMapEmpty!17649 () Bool)

(declare-fun mapDefault!17649 () ValueCell!4999)

