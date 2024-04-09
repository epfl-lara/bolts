; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36788 () Bool)

(assert start!36788)

(declare-fun b!367059 () Bool)

(declare-fun e!224669 () Bool)

(assert (=> b!367059 (= e!224669 false)))

(declare-fun lt!169314 () Bool)

(declare-datatypes ((array!21035 0))(
  ( (array!21036 (arr!9983 (Array (_ BitVec 32) (_ BitVec 64))) (size!10335 (_ BitVec 32))) )
))
(declare-fun lt!169315 () array!21035)

(declare-datatypes ((List!5583 0))(
  ( (Nil!5580) (Cons!5579 (h!6435 (_ BitVec 64)) (t!10741 List!5583)) )
))
(declare-fun arrayNoDuplicates!0 (array!21035 (_ BitVec 32) List!5583) Bool)

(assert (=> b!367059 (= lt!169314 (arrayNoDuplicates!0 lt!169315 #b00000000000000000000000000000000 Nil!5580))))

(declare-fun b!367060 () Bool)

(declare-fun e!224666 () Bool)

(declare-fun tp_is_empty!8555 () Bool)

(assert (=> b!367060 (= e!224666 tp_is_empty!8555)))

(declare-fun b!367061 () Bool)

(declare-fun res!205533 () Bool)

(declare-fun e!224665 () Bool)

(assert (=> b!367061 (=> (not res!205533) (not e!224665))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!12511 0))(
  ( (V!12512 (val!4322 Int)) )
))
(declare-datatypes ((ValueCell!3934 0))(
  ( (ValueCellFull!3934 (v!6515 V!12511)) (EmptyCell!3934) )
))
(declare-datatypes ((array!21037 0))(
  ( (array!21038 (arr!9984 (Array (_ BitVec 32) ValueCell!3934)) (size!10336 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21037)

(declare-fun _keys!658 () array!21035)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!367061 (= res!205533 (and (= (size!10336 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10335 _keys!658) (size!10336 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!367062 () Bool)

(declare-fun e!224668 () Bool)

(declare-fun mapRes!14397 () Bool)

(assert (=> b!367062 (= e!224668 (and e!224666 mapRes!14397))))

(declare-fun condMapEmpty!14397 () Bool)

(declare-fun mapDefault!14397 () ValueCell!3934)

