; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38590 () Bool)

(assert start!38590)

(declare-fun b_free!9119 () Bool)

(declare-fun b_next!9119 () Bool)

(assert (=> start!38590 (= b_free!9119 (not b_next!9119))))

(declare-fun tp!32480 () Bool)

(declare-fun b_and!16523 () Bool)

(assert (=> start!38590 (= tp!32480 b_and!16523)))

(declare-fun b!399298 () Bool)

(declare-fun res!229669 () Bool)

(declare-fun e!241146 () Bool)

(assert (=> b!399298 (=> (not res!229669) (not e!241146))))

(declare-datatypes ((array!23881 0))(
  ( (array!23882 (arr!11387 (Array (_ BitVec 32) (_ BitVec 64))) (size!11739 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23881)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23881 (_ BitVec 32)) Bool)

(assert (=> b!399298 (= res!229669 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!399299 () Bool)

(declare-fun e!241147 () Bool)

(assert (=> b!399299 (= e!241147 (not true))))

(declare-fun e!241144 () Bool)

(assert (=> b!399299 e!241144))

(declare-fun c!54560 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!399299 (= c!54560 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((V!14439 0))(
  ( (V!14440 (val!5045 Int)) )
))
(declare-fun minValue!515 () V!14439)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4657 0))(
  ( (ValueCellFull!4657 (v!7288 V!14439)) (EmptyCell!4657) )
))
(declare-datatypes ((array!23883 0))(
  ( (array!23884 (arr!11388 (Array (_ BitVec 32) ValueCell!4657)) (size!11740 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23883)

(declare-fun zeroValue!515 () V!14439)

(declare-fun k!794 () (_ BitVec 64))

(declare-datatypes ((Unit!12057 0))(
  ( (Unit!12058) )
))
(declare-fun lt!187544 () Unit!12057)

(declare-fun v!412 () V!14439)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!291 (array!23881 array!23883 (_ BitVec 32) (_ BitVec 32) V!14439 V!14439 (_ BitVec 32) (_ BitVec 64) V!14439 (_ BitVec 32) Int) Unit!12057)

(assert (=> b!399299 (= lt!187544 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!291 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!399301 () Bool)

(assert (=> b!399301 (= e!241146 e!241147)))

(declare-fun res!229678 () Bool)

(assert (=> b!399301 (=> (not res!229678) (not e!241147))))

(declare-fun lt!187545 () array!23881)

(assert (=> b!399301 (= res!229678 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187545 mask!1025))))

(assert (=> b!399301 (= lt!187545 (array!23882 (store (arr!11387 _keys!709) i!563 k!794) (size!11739 _keys!709)))))

(declare-fun b!399302 () Bool)

(declare-fun res!229670 () Bool)

(assert (=> b!399302 (=> (not res!229670) (not e!241146))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!399302 (= res!229670 (validKeyInArray!0 k!794))))

(declare-fun b!399303 () Bool)

(declare-fun res!229676 () Bool)

(assert (=> b!399303 (=> (not res!229676) (not e!241146))))

(assert (=> b!399303 (= res!229676 (or (= (select (arr!11387 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11387 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!399304 () Bool)

(declare-fun e!241149 () Bool)

(declare-fun e!241148 () Bool)

(declare-fun mapRes!16623 () Bool)

(assert (=> b!399304 (= e!241149 (and e!241148 mapRes!16623))))

(declare-fun condMapEmpty!16623 () Bool)

(declare-fun mapDefault!16623 () ValueCell!4657)

