; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38836 () Bool)

(assert start!38836)

(declare-fun b!405143 () Bool)

(declare-fun res!233883 () Bool)

(declare-fun e!243623 () Bool)

(assert (=> b!405143 (=> (not res!233883) (not e!243623))))

(declare-datatypes ((array!24355 0))(
  ( (array!24356 (arr!11624 (Array (_ BitVec 32) (_ BitVec 64))) (size!11976 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24355)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24355 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!405143 (= res!233883 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!405144 () Bool)

(declare-fun res!233885 () Bool)

(assert (=> b!405144 (=> (not res!233885) (not e!243623))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!405144 (= res!233885 (validMask!0 mask!1025))))

(declare-fun b!405145 () Bool)

(declare-fun res!233884 () Bool)

(assert (=> b!405145 (=> (not res!233884) (not e!243623))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!405145 (= res!233884 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11976 _keys!709))))))

(declare-fun b!405146 () Bool)

(declare-fun res!233891 () Bool)

(assert (=> b!405146 (=> (not res!233891) (not e!243623))))

(declare-datatypes ((List!6739 0))(
  ( (Nil!6736) (Cons!6735 (h!7591 (_ BitVec 64)) (t!11921 List!6739)) )
))
(declare-fun arrayNoDuplicates!0 (array!24355 (_ BitVec 32) List!6739) Bool)

(assert (=> b!405146 (= res!233891 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6736))))

(declare-fun b!405147 () Bool)

(declare-fun res!233887 () Bool)

(assert (=> b!405147 (=> (not res!233887) (not e!243623))))

(assert (=> b!405147 (= res!233887 (or (= (select (arr!11624 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11624 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!16992 () Bool)

(declare-fun mapRes!16992 () Bool)

(assert (=> mapIsEmpty!16992 mapRes!16992))

(declare-fun b!405148 () Bool)

(declare-fun res!233890 () Bool)

(assert (=> b!405148 (=> (not res!233890) (not e!243623))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24355 (_ BitVec 32)) Bool)

(assert (=> b!405148 (= res!233890 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun res!233886 () Bool)

(assert (=> start!38836 (=> (not res!233886) (not e!243623))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38836 (= res!233886 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11976 _keys!709))))))

(assert (=> start!38836 e!243623))

(assert (=> start!38836 true))

(declare-datatypes ((V!14767 0))(
  ( (V!14768 (val!5168 Int)) )
))
(declare-datatypes ((ValueCell!4780 0))(
  ( (ValueCellFull!4780 (v!7411 V!14767)) (EmptyCell!4780) )
))
(declare-datatypes ((array!24357 0))(
  ( (array!24358 (arr!11625 (Array (_ BitVec 32) ValueCell!4780)) (size!11977 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24357)

(declare-fun e!243620 () Bool)

(declare-fun array_inv!8492 (array!24357) Bool)

(assert (=> start!38836 (and (array_inv!8492 _values!549) e!243620)))

(declare-fun array_inv!8493 (array!24355) Bool)

(assert (=> start!38836 (array_inv!8493 _keys!709)))

(declare-fun b!405149 () Bool)

(declare-fun res!233888 () Bool)

(assert (=> b!405149 (=> (not res!233888) (not e!243623))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!405149 (= res!233888 (validKeyInArray!0 k!794))))

(declare-fun b!405150 () Bool)

(declare-fun e!243625 () Bool)

(assert (=> b!405150 (= e!243623 e!243625)))

(declare-fun res!233892 () Bool)

(assert (=> b!405150 (=> (not res!233892) (not e!243625))))

(declare-fun lt!188283 () array!24355)

(assert (=> b!405150 (= res!233892 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188283 mask!1025))))

(assert (=> b!405150 (= lt!188283 (array!24356 (store (arr!11624 _keys!709) i!563 k!794) (size!11976 _keys!709)))))

(declare-fun b!405151 () Bool)

(declare-fun e!243621 () Bool)

(assert (=> b!405151 (= e!243620 (and e!243621 mapRes!16992))))

(declare-fun condMapEmpty!16992 () Bool)

(declare-fun mapDefault!16992 () ValueCell!4780)

