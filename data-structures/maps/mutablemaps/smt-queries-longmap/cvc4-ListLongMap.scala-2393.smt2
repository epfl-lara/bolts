; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37876 () Bool)

(assert start!37876)

(declare-fun b_free!8927 () Bool)

(declare-fun b_next!8927 () Bool)

(assert (=> start!37876 (= b_free!8927 (not b_next!8927))))

(declare-fun tp!31538 () Bool)

(declare-fun b_and!16211 () Bool)

(assert (=> start!37876 (= tp!31538 b_and!16211)))

(declare-fun b!389056 () Bool)

(declare-fun res!222611 () Bool)

(declare-fun e!235718 () Bool)

(assert (=> b!389056 (=> (not res!222611) (not e!235718))))

(declare-datatypes ((array!23069 0))(
  ( (array!23070 (arr!10998 (Array (_ BitVec 32) (_ BitVec 64))) (size!11350 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23069)

(declare-datatypes ((List!6342 0))(
  ( (Nil!6339) (Cons!6338 (h!7194 (_ BitVec 64)) (t!11504 List!6342)) )
))
(declare-fun arrayNoDuplicates!0 (array!23069 (_ BitVec 32) List!6342) Bool)

(assert (=> b!389056 (= res!222611 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6339))))

(declare-fun b!389057 () Bool)

(declare-fun e!235721 () Bool)

(assert (=> b!389057 (= e!235718 e!235721)))

(declare-fun res!222619 () Bool)

(assert (=> b!389057 (=> (not res!222619) (not e!235721))))

(declare-fun lt!182907 () array!23069)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23069 (_ BitVec 32)) Bool)

(assert (=> b!389057 (= res!222619 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!182907 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!389057 (= lt!182907 (array!23070 (store (arr!10998 _keys!658) i!548 k!778) (size!11350 _keys!658)))))

(declare-fun b!389058 () Bool)

(declare-fun e!235719 () Bool)

(declare-fun tp_is_empty!9599 () Bool)

(assert (=> b!389058 (= e!235719 tp_is_empty!9599)))

(declare-fun b!389059 () Bool)

(declare-fun res!222617 () Bool)

(declare-fun e!235723 () Bool)

(assert (=> b!389059 (=> (not res!222617) (not e!235723))))

(declare-datatypes ((V!13903 0))(
  ( (V!13904 (val!4844 Int)) )
))
(declare-datatypes ((tuple2!6460 0))(
  ( (tuple2!6461 (_1!3240 (_ BitVec 64)) (_2!3240 V!13903)) )
))
(declare-datatypes ((List!6343 0))(
  ( (Nil!6340) (Cons!6339 (h!7195 tuple2!6460) (t!11505 List!6343)) )
))
(declare-datatypes ((ListLongMap!5387 0))(
  ( (ListLongMap!5388 (toList!2709 List!6343)) )
))
(declare-fun lt!182903 () ListLongMap!5387)

(declare-fun lt!182904 () ListLongMap!5387)

(declare-fun lt!182902 () tuple2!6460)

(declare-fun lt!182901 () tuple2!6460)

(declare-fun +!1007 (ListLongMap!5387 tuple2!6460) ListLongMap!5387)

(assert (=> b!389059 (= res!222617 (= lt!182903 (+!1007 (+!1007 lt!182904 lt!182901) lt!182902)))))

(declare-fun b!389060 () Bool)

(declare-fun res!222618 () Bool)

(assert (=> b!389060 (=> (not res!222618) (not e!235718))))

(declare-datatypes ((ValueCell!4456 0))(
  ( (ValueCellFull!4456 (v!7045 V!13903)) (EmptyCell!4456) )
))
(declare-datatypes ((array!23071 0))(
  ( (array!23072 (arr!10999 (Array (_ BitVec 32) ValueCell!4456)) (size!11351 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23071)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!389060 (= res!222618 (and (= (size!11351 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11350 _keys!658) (size!11351 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!389061 () Bool)

(declare-fun res!222613 () Bool)

(assert (=> b!389061 (=> (not res!222613) (not e!235721))))

(assert (=> b!389061 (= res!222613 (arrayNoDuplicates!0 lt!182907 #b00000000000000000000000000000000 Nil!6339))))

(declare-fun lt!182905 () ListLongMap!5387)

(declare-fun b!389062 () Bool)

(declare-fun lt!182900 () ListLongMap!5387)

(assert (=> b!389062 (= e!235723 (= lt!182905 (+!1007 (+!1007 lt!182900 lt!182901) lt!182902)))))

(declare-fun b!389063 () Bool)

(declare-fun e!235724 () Bool)

(assert (=> b!389063 (= e!235724 (not (= k!778 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!389063 e!235723))

(declare-fun res!222612 () Bool)

(assert (=> b!389063 (=> (not res!222612) (not e!235723))))

(declare-fun lt!182909 () ListLongMap!5387)

(assert (=> b!389063 (= res!222612 (= lt!182905 (+!1007 (+!1007 lt!182909 lt!182901) lt!182902)))))

(declare-fun minValue!472 () V!13903)

(assert (=> b!389063 (= lt!182902 (tuple2!6461 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun zeroValue!472 () V!13903)

(assert (=> b!389063 (= lt!182901 (tuple2!6461 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!389064 () Bool)

(declare-fun res!222608 () Bool)

(assert (=> b!389064 (=> (not res!222608) (not e!235718))))

(assert (=> b!389064 (= res!222608 (or (= (select (arr!10998 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10998 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!389065 () Bool)

(declare-fun res!222616 () Bool)

(assert (=> b!389065 (=> (not res!222616) (not e!235718))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!389065 (= res!222616 (validKeyInArray!0 k!778))))

(declare-fun mapNonEmpty!15969 () Bool)

(declare-fun mapRes!15969 () Bool)

(declare-fun tp!31539 () Bool)

(assert (=> mapNonEmpty!15969 (= mapRes!15969 (and tp!31539 e!235719))))

(declare-fun mapValue!15969 () ValueCell!4456)

(declare-fun mapKey!15969 () (_ BitVec 32))

(declare-fun mapRest!15969 () (Array (_ BitVec 32) ValueCell!4456))

(assert (=> mapNonEmpty!15969 (= (arr!10999 _values!506) (store mapRest!15969 mapKey!15969 mapValue!15969))))

(declare-fun b!389066 () Bool)

(declare-fun e!235720 () Bool)

(assert (=> b!389066 (= e!235720 tp_is_empty!9599)))

(declare-fun b!389067 () Bool)

(declare-fun e!235722 () Bool)

(assert (=> b!389067 (= e!235722 (and e!235720 mapRes!15969))))

(declare-fun condMapEmpty!15969 () Bool)

(declare-fun mapDefault!15969 () ValueCell!4456)

