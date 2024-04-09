; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73328 () Bool)

(assert start!73328)

(declare-fun b_free!14215 () Bool)

(declare-fun b_next!14215 () Bool)

(assert (=> start!73328 (= b_free!14215 (not b_next!14215))))

(declare-fun tp!50150 () Bool)

(declare-fun b_and!23589 () Bool)

(assert (=> start!73328 (= tp!50150 b_and!23589)))

(declare-fun b!854923 () Bool)

(declare-fun e!476703 () Bool)

(declare-fun e!476702 () Bool)

(declare-fun mapRes!26126 () Bool)

(assert (=> b!854923 (= e!476703 (and e!476702 mapRes!26126))))

(declare-fun condMapEmpty!26126 () Bool)

(declare-datatypes ((V!26849 0))(
  ( (V!26850 (val!8223 Int)) )
))
(declare-datatypes ((ValueCell!7736 0))(
  ( (ValueCellFull!7736 (v!10644 V!26849)) (EmptyCell!7736) )
))
(declare-datatypes ((array!48880 0))(
  ( (array!48881 (arr!23467 (Array (_ BitVec 32) ValueCell!7736)) (size!23908 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48880)

(declare-fun mapDefault!26126 () ValueCell!7736)

