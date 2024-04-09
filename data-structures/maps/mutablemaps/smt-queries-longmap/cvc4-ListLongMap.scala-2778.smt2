; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40552 () Bool)

(assert start!40552)

(declare-fun b_free!10571 () Bool)

(declare-fun b_next!10571 () Bool)

(assert (=> start!40552 (= b_free!10571 (not b_next!10571))))

(declare-fun tp!37529 () Bool)

(declare-fun b_and!18589 () Bool)

(assert (=> start!40552 (= tp!37529 b_and!18589)))

(declare-fun b!446722 () Bool)

(declare-fun res!265313 () Bool)

(declare-fun e!262387 () Bool)

(assert (=> b!446722 (=> (not res!265313) (not e!262387))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!446722 (= res!265313 (validKeyInArray!0 k!794))))

(declare-fun mapNonEmpty!19494 () Bool)

(declare-fun mapRes!19494 () Bool)

(declare-fun tp!37530 () Bool)

(declare-fun e!262383 () Bool)

(assert (=> mapNonEmpty!19494 (= mapRes!19494 (and tp!37530 e!262383))))

(declare-fun mapKey!19494 () (_ BitVec 32))

(declare-datatypes ((V!16983 0))(
  ( (V!16984 (val!5999 Int)) )
))
(declare-datatypes ((ValueCell!5611 0))(
  ( (ValueCellFull!5611 (v!8250 V!16983)) (EmptyCell!5611) )
))
(declare-datatypes ((array!27585 0))(
  ( (array!27586 (arr!13236 (Array (_ BitVec 32) ValueCell!5611)) (size!13588 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27585)

(declare-fun mapValue!19494 () ValueCell!5611)

(declare-fun mapRest!19494 () (Array (_ BitVec 32) ValueCell!5611))

(assert (=> mapNonEmpty!19494 (= (arr!13236 _values!549) (store mapRest!19494 mapKey!19494 mapValue!19494))))

(declare-fun b!446723 () Bool)

(declare-fun res!265311 () Bool)

(assert (=> b!446723 (=> (not res!265311) (not e!262387))))

(declare-datatypes ((array!27587 0))(
  ( (array!27588 (arr!13237 (Array (_ BitVec 32) (_ BitVec 64))) (size!13589 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27587)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!446723 (= res!265311 (or (= (select (arr!13237 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13237 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!446724 () Bool)

(declare-fun res!265316 () Bool)

(declare-fun e!262385 () Bool)

(assert (=> b!446724 (=> (not res!265316) (not e!262385))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!446724 (= res!265316 (and (bvsgt from!863 i!563) (bvsgt (bvadd #b00000000000000000000000000000001 from!863) (size!13589 _keys!709))))))

(declare-fun b!446725 () Bool)

(declare-fun res!265318 () Bool)

(assert (=> b!446725 (=> (not res!265318) (not e!262385))))

(declare-fun lt!203823 () array!27587)

(declare-datatypes ((List!7901 0))(
  ( (Nil!7898) (Cons!7897 (h!8753 (_ BitVec 64)) (t!13669 List!7901)) )
))
(declare-fun arrayNoDuplicates!0 (array!27587 (_ BitVec 32) List!7901) Bool)

(assert (=> b!446725 (= res!265318 (arrayNoDuplicates!0 lt!203823 #b00000000000000000000000000000000 Nil!7898))))

(declare-fun b!446726 () Bool)

(declare-fun res!265319 () Bool)

(assert (=> b!446726 (=> (not res!265319) (not e!262387))))

(declare-fun arrayContainsKey!0 (array!27587 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!446726 (= res!265319 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!446727 () Bool)

(declare-fun e!262386 () Bool)

(declare-fun tp_is_empty!11909 () Bool)

(assert (=> b!446727 (= e!262386 tp_is_empty!11909)))

(declare-fun b!446728 () Bool)

(declare-fun res!265317 () Bool)

(assert (=> b!446728 (=> (not res!265317) (not e!262387))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!446728 (= res!265317 (validMask!0 mask!1025))))

(declare-fun b!446730 () Bool)

(declare-fun e!262384 () Bool)

(assert (=> b!446730 (= e!262384 (and e!262386 mapRes!19494))))

(declare-fun condMapEmpty!19494 () Bool)

(declare-fun mapDefault!19494 () ValueCell!5611)

